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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLocationServices,
    required TResult Function(UserPreferences preferences) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestLocationServices,
    TResult? Function(UserPreferences preferences)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLocationServices,
    TResult Function(UserPreferences preferences)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventRequestLocationServices value)
        requestLocationServices,
    required TResult Function(WeatherEventLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventRequestLocationServices value)?
        requestLocationServices,
    TResult? Function(WeatherEventLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventRequestLocationServices value)?
        requestLocationServices,
    TResult Function(WeatherEventLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherEventRequestLocationServicesImplCopyWith<$Res> {
  factory _$$WeatherEventRequestLocationServicesImplCopyWith(
          _$WeatherEventRequestLocationServicesImpl value,
          $Res Function(_$WeatherEventRequestLocationServicesImpl) then) =
      __$$WeatherEventRequestLocationServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherEventRequestLocationServicesImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res,
        _$WeatherEventRequestLocationServicesImpl>
    implements _$$WeatherEventRequestLocationServicesImplCopyWith<$Res> {
  __$$WeatherEventRequestLocationServicesImplCopyWithImpl(
      _$WeatherEventRequestLocationServicesImpl _value,
      $Res Function(_$WeatherEventRequestLocationServicesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherEventRequestLocationServicesImpl
    implements WeatherEventRequestLocationServices {
  const _$WeatherEventRequestLocationServicesImpl();

  @override
  String toString() {
    return 'WeatherEvent.requestLocationServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventRequestLocationServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLocationServices,
    required TResult Function(UserPreferences preferences) load,
  }) {
    return requestLocationServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestLocationServices,
    TResult? Function(UserPreferences preferences)? load,
  }) {
    return requestLocationServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLocationServices,
    TResult Function(UserPreferences preferences)? load,
    required TResult orElse(),
  }) {
    if (requestLocationServices != null) {
      return requestLocationServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherEventRequestLocationServices value)
        requestLocationServices,
    required TResult Function(WeatherEventLoad value) load,
  }) {
    return requestLocationServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventRequestLocationServices value)?
        requestLocationServices,
    TResult? Function(WeatherEventLoad value)? load,
  }) {
    return requestLocationServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventRequestLocationServices value)?
        requestLocationServices,
    TResult Function(WeatherEventLoad value)? load,
    required TResult orElse(),
  }) {
    if (requestLocationServices != null) {
      return requestLocationServices(this);
    }
    return orElse();
  }
}

abstract class WeatherEventRequestLocationServices implements WeatherEvent {
  const factory WeatherEventRequestLocationServices() =
      _$WeatherEventRequestLocationServicesImpl;
}

/// @nodoc
abstract class _$$WeatherEventLoadImplCopyWith<$Res> {
  factory _$$WeatherEventLoadImplCopyWith(_$WeatherEventLoadImpl value,
          $Res Function(_$WeatherEventLoadImpl) then) =
      __$$WeatherEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPreferences preferences});

  $UserPreferencesCopyWith<$Res> get preferences;
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

  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<$Res> get preferences {
    return $UserPreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
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
    required TResult Function() requestLocationServices,
    required TResult Function(UserPreferences preferences) load,
  }) {
    return load(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestLocationServices,
    TResult? Function(UserPreferences preferences)? load,
  }) {
    return load?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLocationServices,
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
    required TResult Function(WeatherEventRequestLocationServices value)
        requestLocationServices,
    required TResult Function(WeatherEventLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherEventRequestLocationServices value)?
        requestLocationServices,
    TResult? Function(WeatherEventLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherEventRequestLocationServices value)?
        requestLocationServices,
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

  UserPreferences get preferences;
  @JsonKey(ignore: true)
  _$$WeatherEventLoadImplCopyWith<_$WeatherEventLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool locationServicesEnabled) initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Forecast> forecasts) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool locationServicesEnabled)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Forecast> forecasts)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool locationServicesEnabled)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Forecast> forecasts)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateInitial value) initial,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateInitial value)? initial,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateInitial value)? initial,
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
abstract class _$$WeatherStateInitialImplCopyWith<$Res> {
  factory _$$WeatherStateInitialImplCopyWith(_$WeatherStateInitialImpl value,
          $Res Function(_$WeatherStateInitialImpl) then) =
      __$$WeatherStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool locationServicesEnabled});
}

/// @nodoc
class __$$WeatherStateInitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateInitialImpl>
    implements _$$WeatherStateInitialImplCopyWith<$Res> {
  __$$WeatherStateInitialImplCopyWithImpl(_$WeatherStateInitialImpl _value,
      $Res Function(_$WeatherStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationServicesEnabled = null,
  }) {
    return _then(_$WeatherStateInitialImpl(
      locationServicesEnabled: null == locationServicesEnabled
          ? _value.locationServicesEnabled
          : locationServicesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WeatherStateInitialImpl implements WeatherStateInitial {
  const _$WeatherStateInitialImpl({this.locationServicesEnabled = false});

  @override
  @JsonKey()
  final bool locationServicesEnabled;

  @override
  String toString() {
    return 'WeatherState.initial(locationServicesEnabled: $locationServicesEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateInitialImpl &&
            (identical(
                    other.locationServicesEnabled, locationServicesEnabled) ||
                other.locationServicesEnabled == locationServicesEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationServicesEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateInitialImplCopyWith<_$WeatherStateInitialImpl> get copyWith =>
      __$$WeatherStateInitialImplCopyWithImpl<_$WeatherStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool locationServicesEnabled) initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Forecast> forecasts) loaded,
  }) {
    return initial(locationServicesEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool locationServicesEnabled)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Forecast> forecasts)? loaded,
  }) {
    return initial?.call(locationServicesEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool locationServicesEnabled)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Forecast> forecasts)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(locationServicesEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateInitial value) initial,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateInitial value)? initial,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateInitial value)? initial,
    TResult Function(WeatherStateLocationLoading value)? loading,
    TResult Function(WeatherStateLocationError value)? error,
    TResult Function(WeatherStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherStateInitial implements WeatherState {
  const factory WeatherStateInitial({final bool locationServicesEnabled}) =
      _$WeatherStateInitialImpl;

  bool get locationServicesEnabled;
  @JsonKey(ignore: true)
  _$$WeatherStateInitialImplCopyWith<_$WeatherStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(bool locationServicesEnabled) initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Forecast> forecasts) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool locationServicesEnabled)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Forecast> forecasts)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool locationServicesEnabled)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Forecast> forecasts)? loaded,
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
    required TResult Function(WeatherStateInitial value) initial,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateInitial value)? initial,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateInitial value)? initial,
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
    required TResult Function(bool locationServicesEnabled) initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Forecast> forecasts) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool locationServicesEnabled)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Forecast> forecasts)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool locationServicesEnabled)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Forecast> forecasts)? loaded,
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
    required TResult Function(WeatherStateInitial value) initial,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateInitial value)? initial,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateInitial value)? initial,
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
  $Res call({List<Forecast> forecasts});
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
    Object? forecasts = null,
  }) {
    return _then(_$WeatherStateLoadedImpl(
      forecasts: null == forecasts
          ? _value._forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
    ));
  }
}

/// @nodoc

class _$WeatherStateLoadedImpl implements WeatherStateLoaded {
  const _$WeatherStateLoadedImpl({required final List<Forecast> forecasts})
      : _forecasts = forecasts;

  final List<Forecast> _forecasts;
  @override
  List<Forecast> get forecasts {
    if (_forecasts is EqualUnmodifiableListView) return _forecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecasts);
  }

  @override
  String toString() {
    return 'WeatherState.loaded(forecasts: $forecasts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._forecasts, _forecasts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_forecasts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateLoadedImplCopyWith<_$WeatherStateLoadedImpl> get copyWith =>
      __$$WeatherStateLoadedImplCopyWithImpl<_$WeatherStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool locationServicesEnabled) initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Forecast> forecasts) loaded,
  }) {
    return loaded(forecasts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool locationServicesEnabled)? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Forecast> forecasts)? loaded,
  }) {
    return loaded?.call(forecasts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool locationServicesEnabled)? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Forecast> forecasts)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(forecasts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherStateInitial value) initial,
    required TResult Function(WeatherStateLocationLoading value) loading,
    required TResult Function(WeatherStateLocationError value) error,
    required TResult Function(WeatherStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherStateInitial value)? initial,
    TResult? Function(WeatherStateLocationLoading value)? loading,
    TResult? Function(WeatherStateLocationError value)? error,
    TResult? Function(WeatherStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherStateInitial value)? initial,
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
  const factory WeatherStateLoaded({required final List<Forecast> forecasts}) =
      _$WeatherStateLoadedImpl;

  List<Forecast> get forecasts;
  @JsonKey(ignore: true)
  _$$WeatherStateLoadedImplCopyWith<_$WeatherStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
