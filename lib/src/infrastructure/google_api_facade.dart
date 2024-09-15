import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_places_api_flutter/src/domain/core/constants/google_api_error_constants.dart';
import 'package:google_places_api_flutter/src/domain/core/constants/api_constants.dart';
import 'package:google_places_api_flutter/src/domain/google_api/common_failure.dart';
import 'package:google_places_api_flutter/src/domain/google_api/i_google_api_facade.dart';
import 'package:google_places_api_flutter/src/domain/google_api/place_details_model.dart';
import 'package:google_places_api_flutter/src/domain/google_api/prediction_model.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/dev/logging_service.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/rest-api/api_error_interceptors.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/rest-api/api_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGoogleApiFacade)
class GoogleApiFacade implements IGoogleApiFacade {
  @override
  Future<Either<CommonFailure, PredictionModel>> getLocationInfo({
    required String apikey,
    required String value,
    required String? webCorsUrl,
  }) async {
    try {
      final headers = await const GoogleApiHeaders().getHeaders();
      final url = kIsWeb && webCorsUrl != null
          ? '$webCorsUrl/${ApiConstants.baseUrl}${ApiConstants.autocomplete}'
          : ApiConstants.autocomplete;

      final response = await ApiServiceV2().dioClient.get(
            url,
            queryParameters: {
              "input": value,
              "key": apikey,
            },
            options: Options(
              headers: headers,
            ),
          );
      final data = PredictionModel.fromMap(response.data);
      LoggingService.verbose(data.status.toString());
      switch (data.status) {
        case GoogleApiErrorConstants.invalidRequest:
          return left(
            const CommonFailure.invalidRequest(),
          );
        case GoogleApiErrorConstants.overQueryLimit:
          return left(
            const CommonFailure.overQueryLimit(),
          );
        case GoogleApiErrorConstants.requestDenied:
          return left(
            const CommonFailure.requestDenied(),
          );
        case GoogleApiErrorConstants.unknownError:
          return left(
            CommonFailure.serverError(data.status),
          );

        case GoogleApiErrorConstants.zeroResults:
          return left(
            const CommonFailure.notFound(),
          );

        case GoogleApiErrorConstants.ok:
        default:
          return right(data);
      }
    } on RequestTimeoutException {
      return left(
        const CommonFailure.requestTimeout(),
      );
    } on DioException catch (e) {
      return left(
        CommonFailure.serverError(e.toString()),
      );
    } catch (e) {
      return left(
        CommonFailure.serverError(e.toString()),
      );
    }
  }

  @override
  Future<Either<CommonFailure, PlaceDetailsModel>> getPlaceDetails({
    required String? placeId,
    required String apikey,
    required String? webCorsUrl,
  }) async {
    try {
      final headers = await const GoogleApiHeaders().getHeaders();
      final url = kIsWeb && webCorsUrl != null
          ? '$webCorsUrl/${ApiConstants.baseUrl}${ApiConstants.details}'
          : ApiConstants.details;

      final response = await ApiServiceV2().dioClient.get(
            url,
            queryParameters: {
              "place_id": placeId,
              "key": apikey,
            },
            options: Options(
              headers: headers,
            ),
          );
      final data = PlaceDetailsModel.fromMap(response.data);
      LoggingService.verbose(data.status.toString());
      switch (data.status) {
        case GoogleApiErrorConstants.invalidRequest:
          return left(
            const CommonFailure.invalidRequest(),
          );
        case GoogleApiErrorConstants.overQueryLimit:
          return left(
            const CommonFailure.overQueryLimit(),
          );
        case GoogleApiErrorConstants.requestDenied:
          return left(
            const CommonFailure.requestDenied(),
          );
        case GoogleApiErrorConstants.unknownError:
          return left(
            CommonFailure.serverError(data.status),
          );

        case GoogleApiErrorConstants.zeroResults:
          return left(
            const CommonFailure.notFound(),
          );

        case GoogleApiErrorConstants.ok:
        default:
          return right(data);
      }
    } on RequestTimeoutException {
      return left(
        const CommonFailure.requestTimeout(),
      );
    } on DioException catch (e) {
      return left(
        CommonFailure.serverError(e.toString()),
      );
    } catch (e) {
      return left(
        CommonFailure.serverError(e.toString()),
      );
    }
  }
}
