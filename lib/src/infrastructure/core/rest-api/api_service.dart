import 'package:dio/dio.dart';
import 'package:google_places_api_flutter/src/domain/core/constants/api_constants.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/rest-api/api_error_interceptors.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/rest-api/interceptor_wrapper.dart';

class ApiServiceV2 {
  static final BaseOptions options = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: const Duration(milliseconds: 30000), //30s
    receiveTimeout: const Duration(milliseconds: 15000), //15s
    contentType: Headers.jsonContentType,
    headers: {'Accept': 'application/json'},
  );

  Dio dioClient = Dio(options)
    ..interceptors.addAll([
      InterceptorWrapper(),
      LogInterceptor(),
      AppInterceptors(),
    ]);
}
