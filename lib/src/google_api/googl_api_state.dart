part of 'googl_api_bloc.dart';

@freezed
class GooglApiState with _$GooglApiState {
  const factory GooglApiState({
    required bool isDetailsLoading,
    required bool isLocationLoading,
    required PredictionModel? predicitionInfo,
    required Prediction? predictionInfo,
    required PlaceDetailsModel? placeDetailInfo,
  }) = _GooglApiState;
  factory GooglApiState.initial() => const GooglApiState(
        isDetailsLoading: false,
        isLocationLoading: false,
        predicitionInfo: null,
        placeDetailInfo: null,
        predictionInfo: null,
      );
}
