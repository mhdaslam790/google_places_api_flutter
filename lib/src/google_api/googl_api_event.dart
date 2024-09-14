part of 'googl_api_bloc.dart';

@freezed
class GooglApiEvent with _$GooglApiEvent {
  const factory GooglApiEvent.getLocationInfo({
    required String text,
    required String apikey,
    required String? webCorsUrl,
  }) = _GetLocationInfo;
  const factory GooglApiEvent.getPlaceDetailsFromPlaceId({
    required Prediction predictionModel,
    required String apikey,
    required String? webCorsUrl,
    required void Function(Prediction, PlaceDetailsModel?) onPlaceSelected,
  }) = _GetPlaceDetailsFromPlaceId;
}
