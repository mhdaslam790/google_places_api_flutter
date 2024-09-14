import 'package:dio/dio.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/dev/logging_service.dart';

class InterceptorWrapper extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LoggingService.info(response.statusCode);

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    LoggingService.error('response ${err.response}');

    return super.onError(err, handler);
  }
}
