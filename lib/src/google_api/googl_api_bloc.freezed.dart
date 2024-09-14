// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'googl_api_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GooglApiEvent {
  String get apikey => throw _privateConstructorUsedError;
  String? get webCorsUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String apikey, String? webCorsUrl)
        getLocationInfo,
    required TResult Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)
        getPlaceDetailsFromPlaceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String apikey, String? webCorsUrl)?
        getLocationInfo,
    TResult? Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)?
        getPlaceDetailsFromPlaceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String apikey, String? webCorsUrl)?
        getLocationInfo,
    TResult Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)?
        getPlaceDetailsFromPlaceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationInfo value) getLocationInfo,
    required TResult Function(_GetPlaceDetailsFromPlaceId value)
        getPlaceDetailsFromPlaceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationInfo value)? getLocationInfo,
    TResult? Function(_GetPlaceDetailsFromPlaceId value)?
        getPlaceDetailsFromPlaceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationInfo value)? getLocationInfo,
    TResult Function(_GetPlaceDetailsFromPlaceId value)?
        getPlaceDetailsFromPlaceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GooglApiEventCopyWith<GooglApiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglApiEventCopyWith<$Res> {
  factory $GooglApiEventCopyWith(
          GooglApiEvent value, $Res Function(GooglApiEvent) then) =
      _$GooglApiEventCopyWithImpl<$Res, GooglApiEvent>;
  @useResult
  $Res call({String apikey, String? webCorsUrl});
}

/// @nodoc
class _$GooglApiEventCopyWithImpl<$Res, $Val extends GooglApiEvent>
    implements $GooglApiEventCopyWith<$Res> {
  _$GooglApiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apikey = null,
    Object? webCorsUrl = freezed,
  }) {
    return _then(_value.copyWith(
      apikey: null == apikey
          ? _value.apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as String,
      webCorsUrl: freezed == webCorsUrl
          ? _value.webCorsUrl
          : webCorsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLocationInfoImplCopyWith<$Res>
    implements $GooglApiEventCopyWith<$Res> {
  factory _$$GetLocationInfoImplCopyWith(_$GetLocationInfoImpl value,
          $Res Function(_$GetLocationInfoImpl) then) =
      __$$GetLocationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String apikey, String? webCorsUrl});
}

/// @nodoc
class __$$GetLocationInfoImplCopyWithImpl<$Res>
    extends _$GooglApiEventCopyWithImpl<$Res, _$GetLocationInfoImpl>
    implements _$$GetLocationInfoImplCopyWith<$Res> {
  __$$GetLocationInfoImplCopyWithImpl(
      _$GetLocationInfoImpl _value, $Res Function(_$GetLocationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? apikey = null,
    Object? webCorsUrl = freezed,
  }) {
    return _then(_$GetLocationInfoImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      apikey: null == apikey
          ? _value.apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as String,
      webCorsUrl: freezed == webCorsUrl
          ? _value.webCorsUrl
          : webCorsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetLocationInfoImpl implements _GetLocationInfo {
  const _$GetLocationInfoImpl(
      {required this.text, required this.apikey, required this.webCorsUrl});

  @override
  final String text;
  @override
  final String apikey;
  @override
  final String? webCorsUrl;

  @override
  String toString() {
    return 'GooglApiEvent.getLocationInfo(text: $text, apikey: $apikey, webCorsUrl: $webCorsUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationInfoImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.apikey, apikey) || other.apikey == apikey) &&
            (identical(other.webCorsUrl, webCorsUrl) ||
                other.webCorsUrl == webCorsUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, apikey, webCorsUrl);

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationInfoImplCopyWith<_$GetLocationInfoImpl> get copyWith =>
      __$$GetLocationInfoImplCopyWithImpl<_$GetLocationInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String apikey, String? webCorsUrl)
        getLocationInfo,
    required TResult Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)
        getPlaceDetailsFromPlaceId,
  }) {
    return getLocationInfo(text, apikey, webCorsUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String apikey, String? webCorsUrl)?
        getLocationInfo,
    TResult? Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)?
        getPlaceDetailsFromPlaceId,
  }) {
    return getLocationInfo?.call(text, apikey, webCorsUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String apikey, String? webCorsUrl)?
        getLocationInfo,
    TResult Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)?
        getPlaceDetailsFromPlaceId,
    required TResult orElse(),
  }) {
    if (getLocationInfo != null) {
      return getLocationInfo(text, apikey, webCorsUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationInfo value) getLocationInfo,
    required TResult Function(_GetPlaceDetailsFromPlaceId value)
        getPlaceDetailsFromPlaceId,
  }) {
    return getLocationInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationInfo value)? getLocationInfo,
    TResult? Function(_GetPlaceDetailsFromPlaceId value)?
        getPlaceDetailsFromPlaceId,
  }) {
    return getLocationInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationInfo value)? getLocationInfo,
    TResult Function(_GetPlaceDetailsFromPlaceId value)?
        getPlaceDetailsFromPlaceId,
    required TResult orElse(),
  }) {
    if (getLocationInfo != null) {
      return getLocationInfo(this);
    }
    return orElse();
  }
}

abstract class _GetLocationInfo implements GooglApiEvent {
  const factory _GetLocationInfo(
      {required final String text,
      required final String apikey,
      required final String? webCorsUrl}) = _$GetLocationInfoImpl;

  String get text;
  @override
  String get apikey;
  @override
  String? get webCorsUrl;

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLocationInfoImplCopyWith<_$GetLocationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceDetailsFromPlaceIdImplCopyWith<$Res>
    implements $GooglApiEventCopyWith<$Res> {
  factory _$$GetPlaceDetailsFromPlaceIdImplCopyWith(
          _$GetPlaceDetailsFromPlaceIdImpl value,
          $Res Function(_$GetPlaceDetailsFromPlaceIdImpl) then) =
      __$$GetPlaceDetailsFromPlaceIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Prediction predictionModel,
      String apikey,
      String? webCorsUrl,
      void Function(Prediction, PlaceDetailsModel?) onPlaceSelected});
}

/// @nodoc
class __$$GetPlaceDetailsFromPlaceIdImplCopyWithImpl<$Res>
    extends _$GooglApiEventCopyWithImpl<$Res, _$GetPlaceDetailsFromPlaceIdImpl>
    implements _$$GetPlaceDetailsFromPlaceIdImplCopyWith<$Res> {
  __$$GetPlaceDetailsFromPlaceIdImplCopyWithImpl(
      _$GetPlaceDetailsFromPlaceIdImpl _value,
      $Res Function(_$GetPlaceDetailsFromPlaceIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictionModel = null,
    Object? apikey = null,
    Object? webCorsUrl = freezed,
    Object? onPlaceSelected = null,
  }) {
    return _then(_$GetPlaceDetailsFromPlaceIdImpl(
      predictionModel: null == predictionModel
          ? _value.predictionModel
          : predictionModel // ignore: cast_nullable_to_non_nullable
              as Prediction,
      apikey: null == apikey
          ? _value.apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as String,
      webCorsUrl: freezed == webCorsUrl
          ? _value.webCorsUrl
          : webCorsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      onPlaceSelected: null == onPlaceSelected
          ? _value.onPlaceSelected
          : onPlaceSelected // ignore: cast_nullable_to_non_nullable
              as void Function(Prediction, PlaceDetailsModel?),
    ));
  }
}

/// @nodoc

class _$GetPlaceDetailsFromPlaceIdImpl implements _GetPlaceDetailsFromPlaceId {
  const _$GetPlaceDetailsFromPlaceIdImpl(
      {required this.predictionModel,
      required this.apikey,
      required this.webCorsUrl,
      required this.onPlaceSelected});

  @override
  final Prediction predictionModel;
  @override
  final String apikey;
  @override
  final String? webCorsUrl;
  @override
  final void Function(Prediction, PlaceDetailsModel?) onPlaceSelected;

  @override
  String toString() {
    return 'GooglApiEvent.getPlaceDetailsFromPlaceId(predictionModel: $predictionModel, apikey: $apikey, webCorsUrl: $webCorsUrl, onPlaceSelected: $onPlaceSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceDetailsFromPlaceIdImpl &&
            (identical(other.predictionModel, predictionModel) ||
                other.predictionModel == predictionModel) &&
            (identical(other.apikey, apikey) || other.apikey == apikey) &&
            (identical(other.webCorsUrl, webCorsUrl) ||
                other.webCorsUrl == webCorsUrl) &&
            (identical(other.onPlaceSelected, onPlaceSelected) ||
                other.onPlaceSelected == onPlaceSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, predictionModel, apikey, webCorsUrl, onPlaceSelected);

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceDetailsFromPlaceIdImplCopyWith<_$GetPlaceDetailsFromPlaceIdImpl>
      get copyWith => __$$GetPlaceDetailsFromPlaceIdImplCopyWithImpl<
          _$GetPlaceDetailsFromPlaceIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String apikey, String? webCorsUrl)
        getLocationInfo,
    required TResult Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)
        getPlaceDetailsFromPlaceId,
  }) {
    return getPlaceDetailsFromPlaceId(
        predictionModel, apikey, webCorsUrl, onPlaceSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String apikey, String? webCorsUrl)?
        getLocationInfo,
    TResult? Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)?
        getPlaceDetailsFromPlaceId,
  }) {
    return getPlaceDetailsFromPlaceId?.call(
        predictionModel, apikey, webCorsUrl, onPlaceSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String apikey, String? webCorsUrl)?
        getLocationInfo,
    TResult Function(
            Prediction predictionModel,
            String apikey,
            String? webCorsUrl,
            void Function(Prediction, PlaceDetailsModel?) onPlaceSelected)?
        getPlaceDetailsFromPlaceId,
    required TResult orElse(),
  }) {
    if (getPlaceDetailsFromPlaceId != null) {
      return getPlaceDetailsFromPlaceId(
          predictionModel, apikey, webCorsUrl, onPlaceSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationInfo value) getLocationInfo,
    required TResult Function(_GetPlaceDetailsFromPlaceId value)
        getPlaceDetailsFromPlaceId,
  }) {
    return getPlaceDetailsFromPlaceId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationInfo value)? getLocationInfo,
    TResult? Function(_GetPlaceDetailsFromPlaceId value)?
        getPlaceDetailsFromPlaceId,
  }) {
    return getPlaceDetailsFromPlaceId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationInfo value)? getLocationInfo,
    TResult Function(_GetPlaceDetailsFromPlaceId value)?
        getPlaceDetailsFromPlaceId,
    required TResult orElse(),
  }) {
    if (getPlaceDetailsFromPlaceId != null) {
      return getPlaceDetailsFromPlaceId(this);
    }
    return orElse();
  }
}

abstract class _GetPlaceDetailsFromPlaceId implements GooglApiEvent {
  const factory _GetPlaceDetailsFromPlaceId(
      {required final Prediction predictionModel,
      required final String apikey,
      required final String? webCorsUrl,
      required final void Function(Prediction, PlaceDetailsModel?)
          onPlaceSelected}) = _$GetPlaceDetailsFromPlaceIdImpl;

  Prediction get predictionModel;
  @override
  String get apikey;
  @override
  String? get webCorsUrl;
  void Function(Prediction, PlaceDetailsModel?) get onPlaceSelected;

  /// Create a copy of GooglApiEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPlaceDetailsFromPlaceIdImplCopyWith<_$GetPlaceDetailsFromPlaceIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GooglApiState {
  bool get isDetailsLoading => throw _privateConstructorUsedError;
  bool get isLocationLoading => throw _privateConstructorUsedError;
  PredictionModel? get predicitionInfo => throw _privateConstructorUsedError;
  Prediction? get predictionInfo => throw _privateConstructorUsedError;
  PlaceDetailsModel? get placeDetailInfo => throw _privateConstructorUsedError;

  /// Create a copy of GooglApiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GooglApiStateCopyWith<GooglApiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglApiStateCopyWith<$Res> {
  factory $GooglApiStateCopyWith(
          GooglApiState value, $Res Function(GooglApiState) then) =
      _$GooglApiStateCopyWithImpl<$Res, GooglApiState>;
  @useResult
  $Res call(
      {bool isDetailsLoading,
      bool isLocationLoading,
      PredictionModel? predicitionInfo,
      Prediction? predictionInfo,
      PlaceDetailsModel? placeDetailInfo});
}

/// @nodoc
class _$GooglApiStateCopyWithImpl<$Res, $Val extends GooglApiState>
    implements $GooglApiStateCopyWith<$Res> {
  _$GooglApiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GooglApiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDetailsLoading = null,
    Object? isLocationLoading = null,
    Object? predicitionInfo = freezed,
    Object? predictionInfo = freezed,
    Object? placeDetailInfo = freezed,
  }) {
    return _then(_value.copyWith(
      isDetailsLoading: null == isDetailsLoading
          ? _value.isDetailsLoading
          : isDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationLoading: null == isLocationLoading
          ? _value.isLocationLoading
          : isLocationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      predicitionInfo: freezed == predicitionInfo
          ? _value.predicitionInfo
          : predicitionInfo // ignore: cast_nullable_to_non_nullable
              as PredictionModel?,
      predictionInfo: freezed == predictionInfo
          ? _value.predictionInfo
          : predictionInfo // ignore: cast_nullable_to_non_nullable
              as Prediction?,
      placeDetailInfo: freezed == placeDetailInfo
          ? _value.placeDetailInfo
          : placeDetailInfo // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GooglApiStateImplCopyWith<$Res>
    implements $GooglApiStateCopyWith<$Res> {
  factory _$$GooglApiStateImplCopyWith(
          _$GooglApiStateImpl value, $Res Function(_$GooglApiStateImpl) then) =
      __$$GooglApiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDetailsLoading,
      bool isLocationLoading,
      PredictionModel? predicitionInfo,
      Prediction? predictionInfo,
      PlaceDetailsModel? placeDetailInfo});
}

/// @nodoc
class __$$GooglApiStateImplCopyWithImpl<$Res>
    extends _$GooglApiStateCopyWithImpl<$Res, _$GooglApiStateImpl>
    implements _$$GooglApiStateImplCopyWith<$Res> {
  __$$GooglApiStateImplCopyWithImpl(
      _$GooglApiStateImpl _value, $Res Function(_$GooglApiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GooglApiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDetailsLoading = null,
    Object? isLocationLoading = null,
    Object? predicitionInfo = freezed,
    Object? predictionInfo = freezed,
    Object? placeDetailInfo = freezed,
  }) {
    return _then(_$GooglApiStateImpl(
      isDetailsLoading: null == isDetailsLoading
          ? _value.isDetailsLoading
          : isDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationLoading: null == isLocationLoading
          ? _value.isLocationLoading
          : isLocationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      predicitionInfo: freezed == predicitionInfo
          ? _value.predicitionInfo
          : predicitionInfo // ignore: cast_nullable_to_non_nullable
              as PredictionModel?,
      predictionInfo: freezed == predictionInfo
          ? _value.predictionInfo
          : predictionInfo // ignore: cast_nullable_to_non_nullable
              as Prediction?,
      placeDetailInfo: freezed == placeDetailInfo
          ? _value.placeDetailInfo
          : placeDetailInfo // ignore: cast_nullable_to_non_nullable
              as PlaceDetailsModel?,
    ));
  }
}

/// @nodoc

class _$GooglApiStateImpl implements _GooglApiState {
  const _$GooglApiStateImpl(
      {required this.isDetailsLoading,
      required this.isLocationLoading,
      required this.predicitionInfo,
      required this.predictionInfo,
      required this.placeDetailInfo});

  @override
  final bool isDetailsLoading;
  @override
  final bool isLocationLoading;
  @override
  final PredictionModel? predicitionInfo;
  @override
  final Prediction? predictionInfo;
  @override
  final PlaceDetailsModel? placeDetailInfo;

  @override
  String toString() {
    return 'GooglApiState(isDetailsLoading: $isDetailsLoading, isLocationLoading: $isLocationLoading, predicitionInfo: $predicitionInfo, predictionInfo: $predictionInfo, placeDetailInfo: $placeDetailInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GooglApiStateImpl &&
            (identical(other.isDetailsLoading, isDetailsLoading) ||
                other.isDetailsLoading == isDetailsLoading) &&
            (identical(other.isLocationLoading, isLocationLoading) ||
                other.isLocationLoading == isLocationLoading) &&
            (identical(other.predicitionInfo, predicitionInfo) ||
                other.predicitionInfo == predicitionInfo) &&
            (identical(other.predictionInfo, predictionInfo) ||
                other.predictionInfo == predictionInfo) &&
            (identical(other.placeDetailInfo, placeDetailInfo) ||
                other.placeDetailInfo == placeDetailInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDetailsLoading,
      isLocationLoading, predicitionInfo, predictionInfo, placeDetailInfo);

  /// Create a copy of GooglApiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GooglApiStateImplCopyWith<_$GooglApiStateImpl> get copyWith =>
      __$$GooglApiStateImplCopyWithImpl<_$GooglApiStateImpl>(this, _$identity);
}

abstract class _GooglApiState implements GooglApiState {
  const factory _GooglApiState(
      {required final bool isDetailsLoading,
      required final bool isLocationLoading,
      required final PredictionModel? predicitionInfo,
      required final Prediction? predictionInfo,
      required final PlaceDetailsModel? placeDetailInfo}) = _$GooglApiStateImpl;

  @override
  bool get isDetailsLoading;
  @override
  bool get isLocationLoading;
  @override
  PredictionModel? get predicitionInfo;
  @override
  Prediction? get predictionInfo;
  @override
  PlaceDetailsModel? get placeDetailInfo;

  /// Create a copy of GooglApiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GooglApiStateImplCopyWith<_$GooglApiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
