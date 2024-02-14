// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  UserPreferences get preferences => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserPreferences preferences) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserPreferences preferences)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserPreferences preferences)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({UserPreferences preferences});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferences = null,
  }) {
    return _then(_value.copyWith(
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferences,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherEventLoadImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$WeatherEventLoadImplCopyWith(_$WeatherEventLoadImpl value,
          $Res Function(_$WeatherEventLoadImpl) then) =
      __$$WeatherEventLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserPreferences preferences});
}

/// @nodoc
class __$$WeatherEventLoadImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventLoadImpl>
    implements _$$WeatherEventLoadImplCopyWith<$Res> {
  __$$WeatherEventLoadImplCopyWithImpl(_$WeatherEventLoadImpl _value,
      $Res Function(_$WeatherEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferences = null,
  }) {
    return _then(_$WeatherEventLoadImpl(
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferences,
    ));
  }
}

/// @nodoc

class _$WeatherEventLoadImpl implements WeatherEventLoad {
  const _$WeatherEventLoadImpl({required this.preferences});

  @override
  final UserPreferences preferences;

  @override
  String toString() {
    return 'WeatherEvent.load(preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventLoadImpl &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEventLoadImplCopyWith<_$WeatherEventLoadImpl> get copyWith =>
      __$$WeatherEventLoadImplCopyWithImpl<_$WeatherEventLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserPreferences preferences) load,
  }) {
    return load(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserPreferences preferences)? load,
  }) {
    return load?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserPreferences preferences)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(preferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class WeatherEventLoad implements WeatherEvent {
  const factory WeatherEventLoad({required final UserPreferences preferences}) =
      _$WeatherEventLoadImpl;

  @override
  UserPreferences get preferences;
  @override
  @JsonKey(ignore: true)
  _$$WeatherEventLoadImplCopyWith<_$WeatherEventLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationServicesDisabled,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationServicesDisabled,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Forecast forecast)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationServicesDisabled,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateLocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult Function(WeatherStateLocationLoading value)? loading,
    TResult Function(WeatherStateLocationError value)? error,
    TResult Function(WeatherStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherStateLocationServicesDisabledImplCopyWith<$Res> {
  factory _$$WeatherStateLocationServicesDisabledImplCopyWith(
          _$WeatherStateLocationServicesDisabledImpl value,
          $Res Function(_$WeatherStateLocationServicesDisabledImpl) then) =
      __$$WeatherStateLocationServicesDisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherStateLocationServicesDisabledImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res,
        _$WeatherStateLocationServicesDisabledImpl>
    implements _$$WeatherStateLocationServicesDisabledImplCopyWith<$Res> {
  __$$WeatherStateLocationServicesDisabledImplCopyWithImpl(
      _$WeatherStateLocationServicesDisabledImpl _value,
      $Res Function(_$WeatherStateLocationServicesDisabledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherStateLocationServicesDisabledImpl
    implements WeatherStateLocationServicesDisabled {
  const _$WeatherStateLocationServicesDisabledImpl();

  @override
  String toString() {
    return 'WeatherState.locationServicesDisabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateLocationServicesDisabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationServicesDisabled,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return locationServicesDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationServicesDisabled,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Forecast forecast)? loaded,
  }) {
    return locationServicesDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationServicesDisabled,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) {
    if (locationServicesDisabled != null) {
      return locationServicesDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateLocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return locationServicesDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return locationServicesDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult Function(WeatherStateLocationLoading value)? loading,
    TResult Function(WeatherStateLocationError value)? error,
    TResult Function(WeatherStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (locationServicesDisabled != null) {
      return locationServicesDisabled(this);
    }
    return orElse();
  }
}

abstract class WeatherStateLocationServicesDisabled implements WeatherState {
  const factory WeatherStateLocationServicesDisabled() =
      _$WeatherStateLocationServicesDisabledImpl;
}

/// @nodoc
abstract class _$$WeatherStateLocationLoadingImplCopyWith<$Res> {
  factory _$$WeatherStateLocationLoadingImplCopyWith(
          _$WeatherStateLocationLoadingImpl value,
          $Res Function(_$WeatherStateLocationLoadingImpl) then) =
      __$$WeatherStateLocationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherStateLocationLoadingImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateLocationLoadingImpl>
    implements _$$WeatherStateLocationLoadingImplCopyWith<$Res> {
  __$$WeatherStateLocationLoadingImplCopyWithImpl(
      _$WeatherStateLocationLoadingImpl _value,
      $Res Function(_$WeatherStateLocationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherStateLocationLoadingImpl implements WeatherStateLocationLoading {
  const _$WeatherStateLocationLoadingImpl();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateLocationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationServicesDisabled,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationServicesDisabled,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Forecast forecast)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationServicesDisabled,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateLocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult Function(WeatherStateLocationLoading value)? loading,
    TResult Function(WeatherStateLocationError value)? error,
    TResult Function(WeatherStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherStateLocationLoading implements WeatherState {
  const factory WeatherStateLocationLoading() =
      _$WeatherStateLocationLoadingImpl;
}

/// @nodoc
abstract class _$$WeatherStateLocationErrorImplCopyWith<$Res> {
  factory _$$WeatherStateLocationErrorImplCopyWith(
          _$WeatherStateLocationErrorImpl value,
          $Res Function(_$WeatherStateLocationErrorImpl) then) =
      __$$WeatherStateLocationErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherStateLocationErrorImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateLocationErrorImpl>
    implements _$$WeatherStateLocationErrorImplCopyWith<$Res> {
  __$$WeatherStateLocationErrorImplCopyWithImpl(
      _$WeatherStateLocationErrorImpl _value,
      $Res Function(_$WeatherStateLocationErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherStateLocationErrorImpl implements WeatherStateLocationError {
  const _$WeatherStateLocationErrorImpl();

  @override
  String toString() {
    return 'WeatherState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateLocationErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationServicesDisabled,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationServicesDisabled,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Forecast forecast)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationServicesDisabled,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateLocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult Function(WeatherStateLocationLoading value)? loading,
    TResult Function(WeatherStateLocationError value)? error,
    TResult Function(WeatherStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherStateLocationError implements WeatherState {
  const factory WeatherStateLocationError() = _$WeatherStateLocationErrorImpl;
}

/// @nodoc
abstract class _$$WeatherStateLoadedImplCopyWith<$Res> {
  factory _$$WeatherStateLoadedImplCopyWith(_$WeatherStateLoadedImpl value,
          $Res Function(_$WeatherStateLoadedImpl) then) =
      __$$WeatherStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Forecast forecast});

  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$WeatherStateLoadedImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateLoadedImpl>
    implements _$$WeatherStateLoadedImplCopyWith<$Res> {
  __$$WeatherStateLoadedImplCopyWithImpl(_$WeatherStateLoadedImpl _value,
      $Res Function(_$WeatherStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_$WeatherStateLoadedImpl(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<$Res> get forecast {
    return $ForecastCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc

class _$WeatherStateLoadedImpl implements WeatherStateLoaded {
  const _$WeatherStateLoadedImpl({required this.forecast});

  @override
  final Forecast forecast;

  @override
  String toString() {
    return 'WeatherState.loaded(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateLoadedImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateLoadedImplCopyWith<_$WeatherStateLoadedImpl> get copyWith =>
      __$$WeatherStateLoadedImplCopyWithImpl<_$WeatherStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationServicesDisabled,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Forecast forecast) loaded,
  }) {
    return loaded(forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationServicesDisabled,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Forecast forecast)? loaded,
  }) {
    return loaded?.call(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationServicesDisabled,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Forecast forecast)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateLocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateLocationServicesDisabled value)?
        locationServicesDisabled,
    TResult Function(WeatherStateLocationLoading value)? loading,
    TResult Function(WeatherStateLocationError value)? error,
    TResult Function(WeatherStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherStateLoaded implements WeatherState {
  const factory WeatherStateLoaded({required final Forecast forecast}) =
      _$WeatherStateLoadedImpl;

  Forecast get forecast;
  @JsonKey(ignore: true)
  _$$WeatherStateLoadedImplCopyWith<_$WeatherStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
