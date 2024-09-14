import 'package:dartz/dartz.dart';
import 'package:google_places_api_flutter/src/domain/google_api/common_failure.dart';
import 'package:google_places_api_flutter/src/domain/google_api/place_details_model.dart';
import 'package:google_places_api_flutter/src/domain/google_api/prediction_model.dart';

abstract class IGoogleApiFacade {
  Future<Either<CommonFailure, PredictionModel>> getLocationInfo({
    required String apikey,
    required String value,
    required String? webCorsUrl,
  });
  Future<Either<CommonFailure, PlaceDetailsModel>> getPlaceDetails({
    required String? placeId,
    required String apikey,
    required String? webCorsUrl,
  });
}
