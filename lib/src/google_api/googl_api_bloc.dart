import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_places_api_flutter/src/domain/google_api/i_google_api_facade.dart';
import 'package:google_places_api_flutter/src/domain/google_api/place_details_model.dart';
import 'package:google_places_api_flutter/src/domain/google_api/prediction_model.dart';
import 'package:injectable/injectable.dart';

part 'googl_api_event.dart';
part 'googl_api_state.dart';
part 'googl_api_bloc.freezed.dart';

@injectable
class GooglApiBloc extends Bloc<GooglApiEvent, GooglApiState> {
  final IGoogleApiFacade _googleApiFacade;
  GooglApiBloc(this._googleApiFacade) : super(GooglApiState.initial()) {
    on<_GetLocationInfo>((event, emit) async {
      emit.call(state.copyWith(isLocationLoading: true));
      final opt = await _googleApiFacade.getLocationInfo(
        apikey: event.apikey,
        value: event.text,
        webCorsUrl: event.webCorsUrl,
      );
      opt.fold(
        (failure) => emit.call(
          state.copyWith(predicitionInfo: null),
        ),
        (predictions) => emit.call(
          state.copyWith(
            predicitionInfo: predictions,
          ),
        ),
      );
      emit.call(state.copyWith(
        isLocationLoading: false,
      ));
    });
    on<_GetPlaceDetailsFromPlaceId>((event, emit) async {
      emit.call(state.copyWith(isDetailsLoading: true));
      final opt = await _googleApiFacade.getPlaceDetails(
        apikey: event.apikey,
        placeId: event.predictionModel.place_id,
        webCorsUrl: event.webCorsUrl,
      );

      opt.fold(
        (failure) => emit.call(
          state.copyWith(
            isDetailsLoading: false,
            predicitionInfo: null,
          ),
        ),
        (placeDetails) {
          event.onPlaceSelected(
            event.predictionModel,
            placeDetails,
          );
          return emit.call(
            state.copyWith(
              isDetailsLoading: false,
              placeDetailInfo: placeDetails,
              predictionInfo: event.predictionModel,
            ),
          );
        },
      );
    });
  }
}
