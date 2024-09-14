import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions, err.response);
          case 401:
            throw UnauthorizedException(err.requestOptions, err.response);
          case 403:
            throw ForbiddenRequestException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 408:
            throw RequestTimeoutException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 422:
            throw ValidationException(err.requestOptions, err.response);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
          case 504:
            throw RequestTimeoutException(err.requestOptions);
        }
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw InternalServerErrorException(err.requestOptions);
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        break;
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
        break;
    }

    return handler.next(err);
  }
}

class ValidationException extends DioException {
  ValidationException(RequestOptions r, Response? response)
      : super(requestOptions: r, response: response);
  @override
  String toString() {
    return 'Request to the server has validation error.';
  }
}

class ForbiddenRequestException extends DioException {
  ForbiddenRequestException(RequestOptions r)
      : super(
          requestOptions: r,
        );

  @override
  String toString() {
    return 'access to the requested resource is forbidden';
  }
}

class RequestTimeoutException extends DioException {
  RequestTimeoutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return "Request timeout";
  }
}

class DataValidationRequestException extends DioException {
  DataValidationRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Missing data or parameters';
  }
}

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r, Response? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r, Response? response)
      : super(requestOptions: r, response: response);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioException {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
