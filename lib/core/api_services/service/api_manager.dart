import 'dart:async';
import 'dart:core';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import 'env.dart';
import 'exceptions.dart';
import 'interceptors/interceptors.dart';
import 'service_constant.dart';

class ApiManager {
  Dio _dio;
  final Logger _logger = new Logger("ApiEndpoints");

  ApiManager() {
    _dio = Dio();
    _dio.options.connectTimeout = connectionTimeout;
    _dio.options.receiveTimeout = connectionReadTimeout;

    //Disable Certificate verification for development purpose (accept every
    // connection)

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    var loggingInterceptor = getLoggingInterceptor();
    var errorInterceptor = getErrorInterceptor(loggingInterceptor);
    var responseInterceptor = getResponseInterceptor(loggingInterceptor);
    var requestInterceptor = getRequestInterceptor(loggingInterceptor);

    _dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) async =>
            await requestInterceptor.getRequestInterceptor(options),
        onResponse: (Response response) =>
            responseInterceptor.getResponseInterceptor(response),
        onError: (DioError dioError) =>
            errorInterceptor.getErrorInterceptors(dioError)));
  }

  String _getFullUrlPath(String path) {
    return '$API_ENDPOINT' + path;
  }

  Map<String, String> _getHttpHeaders(String authToken) {
    if (authToken != null) {
      return {
        "content-type": "application/x-www-form-urlencoded",
        'Charset': 'utf-8',
        "authorization": "Bearer $authToken"
      };
    } else {
      return {
        "content-type": "application/x-www-form-urlencoded",
        'Charset': 'utf-8',
      };
    }
  }

  dynamic _handleError(dynamic error, dynamic stacktrace) {
    if (error is DioError) {
      throw handleDioError(error);
    } else {
      throw BadRequestException(
          "Exception occured: $error stack trace: ${stacktrace.toString()}");
    }
  }

  Future<dynamic> getDynamic(String token, String urlBasePath) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.get(
        Uri.encodeFull(url),
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> put(String token, String path, {dynamic data}) async {
    String url = _getFullUrlPath(path);
    try {
      Response response = await _dio.put(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> putDynamic(String token, String path, {dynamic data}) async {
    String url = _getFullUrlPath(path);
    try {
      Response response = await _dio.put(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> delete(String token, String path) async {
    String url = _getFullUrlPath(path);
    try {
      Response response = await _dio.delete(
        Uri.encodeFull(url),
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> postDynamic(String token, String urlBasePath,
      {dynamic data}) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> postDynamicWithVerifyToken(String token, String urlBasePath,
      {dynamic data}) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<String> postWithoutToken(String urlBasePath, {dynamic data}) async {
    return post(urlBasePath, null, data: data);
  }

  Future<String> post(String urlBasePath, String token, {dynamic data}) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      return _handleError(error, stacktrace);
    }
  }

  Future<dynamic> uploadFile(String authToken, String urlBasePath,
      FormData formData, int fileLength) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(url,
          data: formData,
          options: Options(
            headers: {
              "authorization": "Bearer $authToken",
              Headers.contentLengthHeader: fileLength,
            },
          ));
      return response.data.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<Response> downloadFileAsResponse(
      String urlBasePath, String token) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      return await _dio.get(
        Uri.encodeFull(url),
        options: Options(
          headers: _getHttpHeaders(token),
          responseType: ResponseType.bytes,
        ),
      );
    } catch (error, stacktrace) {
      return _handleError(error, stacktrace);
    }
  }

  // Future<File> downloadFile(String urlBasePath, String token) async {
  //   try {
  //     Response response = await this.downloadFileAsResponse(urlBasePath, token);
  //     // Directory tempDir = await getTemporaryDirectory();
  //     String tempPath = tempDir.path;
  //     String contentDisposition = 'content-disposition';
  //     String filename;
  //     String filenameReplace;
  //     response?.headers?.map[contentDisposition]?.forEach((element) {
  //       filename = element?.replaceAll('attachment; filename="', '');
  //       filenameReplace = filename?.replaceAll('"', '');
  //     });
  //     File file = new File('$tempPath/$filenameReplace');
  //     return file.writeAsBytes(response.data);
  //   } catch (error, stacktrace) {
  //     return _handleError(error, stacktrace);
  //   }
  // }
  //
  // Future<File> downloadFilePdf(String urlBasePath, String token) async {
  //   try {
  //     String newPath = "";
  //     Response response = await this.downloadFileAsResponse(urlBasePath, token);
  //     // Directory tempDir = await getExternalStorageDirectory();
  //     String tempPath = tempDir.path;
  //     String contentDisposition = 'content-disposition';
  //     String filename;
  //     String filenameReplace;
  //     response?.headers?.map[contentDisposition]?.forEach((element) {
  //       filename = element?.replaceAll('attachment; filename="', '');
  //       filenameReplace = filename?.replaceAll('"', '');
  //     });
  //     List<String> paths = tempDir.path.split("/");
  //     for (int x = 1; x < paths.length; x++) {
  //       String folder = paths[x];
  //       if (folder != "Android") {
  //         newPath += "/" + folder;
  //       } else {
  //         break;
  //       }
  //     }
  //     newPath = newPath + "/CV";
  //     tempDir = Directory(newPath);
  //     File file = new File('$tempPath/$filenameReplace');
  //     return file.writeAsBytes(response.data);
  //   } catch (error, stacktrace) {
  //     return _handleError(error, stacktrace);
  //   }
  // }

}
