import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_places_api_flutter/src/domain/core/constants/api_constants.dart';
import 'package:google_places_api_flutter/src/domain/core/constants/google_api_error_constants.dart';
import 'package:google_places_api_flutter/src/domain/google_api/common_failure.dart';
import 'package:google_places_api_flutter/src/domain/google_api/i_google_api_facade.dart';
import 'package:google_places_api_flutter/src/domain/google_api/place_details_model.dart';
import 'package:google_places_api_flutter/src/domain/google_api/prediction_model.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/dev/logging_service.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/rest-api/api_error_interceptors.dart';
import 'package:google_places_api_flutter/src/infrastructure/core/rest-api/api_service.dart';

class GoogleApiFacade implements IGoogleApiFacade {
  final ApiServiceV2 apiService;

  GoogleApiFacade({required this.apiService});

  @override
  Future<Either<CommonFailure, PredictionModel>> getLocationInfo({
    required String apikey,
    required String value,
    required String? webCorsUrl,
    List<String>? countriesCodes,
  }) async {
    try {
      final headers = await const GoogleApiHeaders().getHeaders();
      final url = kIsWeb && webCorsUrl != null
          ? '$webCorsUrl/${ApiConstants.baseUrl}${ApiConstants.autocomplete}'
          : ApiConstants.autocomplete;
      String? components;

      if (countriesCodes != null && countriesCodes.isNotEmpty) {
        components = countriesCodes
            .map((code) => 'country:${code.toUpperCase()}')
            .join('|');
      }

      final response = await apiService.dioClient.get(
        url,
        queryParameters: {
          "input": value,
          "key": apikey,
          if (components != null && components.isNotEmpty)
            "components": components,
        },
        options: Options(headers: headers),
      );

      final data = PredictionModel.fromMap(response.data);
      LoggingService.verbose(data.status.toString());

      switch (data.status) {
        case GoogleApiErrorConstants.invalidRequest:
          return left(const InvalidRequest());
        case GoogleApiErrorConstants.overQueryLimit:
          return left(const OverQueryLimit());
        case GoogleApiErrorConstants.requestDenied:
          return left(const RequestDenied());
        case GoogleApiErrorConstants.unknownError:
          return left(ServerError(data.status));
        case GoogleApiErrorConstants.zeroResults:
          return left(const NotFound());
        case GoogleApiErrorConstants.ok:
        default:
          return right(data);
      }
    } on RequestTimeoutException {
      return left(const RequestTimeout());
    } on DioException catch (e) {
      return left(ServerError(e.toString()));
    } catch (e) {
      return left(ServerError(e.toString()));
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

      final response = await apiService.dioClient.get(
        url,
        queryParameters: {"place_id": placeId, "key": apikey},
        options: Options(headers: headers),
      );

      final data = PlaceDetailsModel.fromMap(response.data);
      LoggingService.verbose(data.status.toString());

      switch (data.status) {
        case GoogleApiErrorConstants.invalidRequest:
          return left(const InvalidRequest());
        case GoogleApiErrorConstants.overQueryLimit:
          return left(const OverQueryLimit());
        case GoogleApiErrorConstants.requestDenied:
          return left(const RequestDenied());
        case GoogleApiErrorConstants.unknownError:
          return left(ServerError(data.status));
        case GoogleApiErrorConstants.zeroResults:
          return left(const NotFound());
        case GoogleApiErrorConstants.ok:
        default:
          return right(data);
      }
    } on RequestTimeoutException {
      return left(const RequestTimeout());
    } on DioException catch (e) {
      return left(ServerError(e.toString()));
    } catch (e) {
      return left(ServerError(e.toString()));
    }
  }
}
