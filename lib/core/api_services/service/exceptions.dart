import 'package:dio/dio.dart';

import 'error/error.dart';

class AppException implements Exception {
  final _message;

  AppException([this._message]);

  String toString() {
    return "$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String message]) : super(message);
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([message]) : super(message);
}

class InvalidInputException extends AppException {
  InvalidInputException([String message]) : super(("error.invalid_data"));
}

AppException handleResponseError(Response response) {
  dynamic errorJsonValue = response.data;
  List<dynamic> fieldErrors = (errorJsonValue['fieldErrors'] as List)
      ?.map((e) => ErrorMessage.fromJson(e))
      ?.toList();
  String errorMessage =
      errorJsonValue['error'] ?? errorJsonValue['status'].toString();
  // fieldErrors != null ? fieldErrors[0].message : errorJsonValue['message'];
  switch (response.statusCode) {
    case 400:
      throw BadRequestException(errorMessage);
    case 401:
      throw BadRequestException(errorMessage);
    case 403:
    case 404:
      throw UnauthorizedException(errorMessage);
    case 500:
    default:
      throw FetchDataException(errorMessage);
  }
}

AppException handleDioError(DioError error) {
  switch (error.type) {
    case DioErrorType.CANCEL:
      throw FetchDataException(("request_cancel"));
    case DioErrorType.CONNECT_TIMEOUT:
    case DioErrorType.SEND_TIMEOUT:
      throw FetchDataException(("Connexion internet indisponible."));
    case DioErrorType.RECEIVE_TIMEOUT:
      throw FetchDataException(("request_timeout"));
    case DioErrorType.DEFAULT:
      throw FetchDataException((error.message));
    case DioErrorType.RESPONSE:
      throw handleResponseError(error.response);
  }
  return new AppException(("server"));
}
