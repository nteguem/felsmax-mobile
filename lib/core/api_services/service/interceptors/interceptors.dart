import 'package:feslmax_app/core/api_services/service/interceptors/request_interceptor.dart';
import 'package:feslmax_app/core/api_services/service/interceptors/response_interceptor.dart';

import 'error_interceptor.dart';
import 'logging_interceptor.dart';

/// Logging Interceptor
LoggingInterceptor getLoggingInterceptor() {
  return LoggingInterceptor();
}

/// Error Interceptors
ErrorInterceptor getErrorInterceptor(LoggingInterceptor loggingInterceptor) {
  return ErrorInterceptor(loggingInterceptor);
}

/// Response Interceptors
ResponseInterceptor getResponseInterceptor(
    LoggingInterceptor loggingInterceptor) {
  return ResponseInterceptor(loggingInterceptor);
}

/// Request Interceptors
RequestInterceptor getRequestInterceptor(
    LoggingInterceptor loggingInterceptor) {
  return RequestInterceptor(loggingInterceptor);
}
