// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  List<DateTime>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: DailyWeatherKeys.temperatureMax)
  List<double>? get temperatureMax => throw _privateConstructorUsedError;
  @JsonKey(name: DailyWeatherKeys.temperatureMin)
  List<double>? get temperatureMin => throw _privateConstructorUsedError;
  @JsonKey(name: DailyWeatherKeys.sunrise)
  List<DateTime>? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: DailyWeatherKeys.sunset)
  List<DateTime>? get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
  List<double?>? get precipitationProbabilityMax =>
      throw _privateConstructorUsedError;
  @JsonKey(name: DailyWeatherKeys.weatherCode)
  List<int>? get weatherCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: DailyWeatherKeys.temperatureMax)
      List<double>? temperatureMax,
      @JsonKey(name: DailyWeatherKeys.temperatureMin)
      List<double>? temperatureMin,
      @JsonKey(name: DailyWeatherKeys.sunrise) List<DateTime>? sunrise,
      @JsonKey(name: DailyWeatherKeys.sunset) List<DateTime>? sunset,
      @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
      List<double?>? precipitationProbabilityMax,
      @JsonKey(name: DailyWeatherKeys.weatherCode) List<int>? weatherCode});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperatureMax = freezed,
    Object? temperatureMin = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? precipitationProbabilityMax = freezed,
    Object? weatherCode = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      temperatureMax: freezed == temperatureMax
          ? _value.temperatureMax
          : temperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperatureMin: freezed == temperatureMin
          ? _value.temperatureMin
          : temperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: DailyWeatherKeys.temperatureMax)
      List<double>? temperatureMax,
      @JsonKey(name: DailyWeatherKeys.temperatureMin)
      List<double>? temperatureMin,
      @JsonKey(name: DailyWeatherKeys.sunrise) List<DateTime>? sunrise,
      @JsonKey(name: DailyWeatherKeys.sunset) List<DateTime>? sunset,
      @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
      List<double?>? precipitationProbabilityMax,
      @JsonKey(name: DailyWeatherKeys.weatherCode) List<int>? weatherCode});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperatureMax = freezed,
    Object? temperatureMin = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? precipitationProbabilityMax = freezed,
    Object? weatherCode = freezed,
  }) {
    return _then(_$DailyImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      temperatureMax: freezed == temperatureMax
          ? _value._temperatureMax
          : temperatureMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperatureMin: freezed == temperatureMin
          ? _value._temperatureMin
          : temperatureMin // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sunrise: freezed == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      sunset: freezed == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      precipitationProbabilityMax: freezed == precipitationProbabilityMax
          ? _value._precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<double?>?,
      weatherCode: freezed == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  _$DailyImpl(
      {final List<DateTime>? time,
      @JsonKey(name: DailyWeatherKeys.temperatureMax)
      final List<double>? temperatureMax,
      @JsonKey(name: DailyWeatherKeys.temperatureMin)
      final List<double>? temperatureMin,
      @JsonKey(name: DailyWeatherKeys.sunrise) final List<DateTime>? sunrise,
      @JsonKey(name: DailyWeatherKeys.sunset) final List<DateTime>? sunset,
      @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
      final List<double?>? precipitationProbabilityMax,
      @JsonKey(name: DailyWeatherKeys.weatherCode)
      final List<int>? weatherCode})
      : _time = time,
        _temperatureMax = temperatureMax,
        _temperatureMin = temperatureMin,
        _sunrise = sunrise,
        _sunset = sunset,
        _precipitationProbabilityMax = precipitationProbabilityMax,
        _weatherCode = weatherCode;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  final List<DateTime>? _time;
  @override
  List<DateTime>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperatureMax;
  @override
  @JsonKey(name: DailyWeatherKeys.temperatureMax)
  List<double>? get temperatureMax {
    final value = _temperatureMax;
    if (value == null) return null;
    if (_temperatureMax is EqualUnmodifiableListView) return _temperatureMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperatureMin;
  @override
  @JsonKey(name: DailyWeatherKeys.temperatureMin)
  List<double>? get temperatureMin {
    final value = _temperatureMin;
    if (value == null) return null;
    if (_temperatureMin is EqualUnmodifiableListView) return _temperatureMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DateTime>? _sunrise;
  @override
  @JsonKey(name: DailyWeatherKeys.sunrise)
  List<DateTime>? get sunrise {
    final value = _sunrise;
    if (value == null) return null;
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DateTime>? _sunset;
  @override
  @JsonKey(name: DailyWeatherKeys.sunset)
  List<DateTime>? get sunset {
    final value = _sunset;
    if (value == null) return null;
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double?>? _precipitationProbabilityMax;
  @override
  @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
  List<double?>? get precipitationProbabilityMax {
    final value = _precipitationProbabilityMax;
    if (value == null) return null;
    if (_precipitationProbabilityMax is EqualUnmodifiableListView)
      return _precipitationProbabilityMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _weatherCode;
  @override
  @JsonKey(name: DailyWeatherKeys.weatherCode)
  List<int>? get weatherCode {
    final value = _weatherCode;
    if (value == null) return null;
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Daily(time: $time, temperatureMax: $temperatureMax, temperatureMin: $temperatureMin, sunrise: $sunrise, sunset: $sunset, precipitationProbabilityMax: $precipitationProbabilityMax, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperatureMax, _temperatureMax) &&
            const DeepCollectionEquality()
                .equals(other._temperatureMin, _temperatureMin) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbabilityMax,
                _precipitationProbabilityMax) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperatureMax),
      const DeepCollectionEquality().hash(_temperatureMin),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset),
      const DeepCollectionEquality().hash(_precipitationProbabilityMax),
      const DeepCollectionEquality().hash(_weatherCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  factory _Daily(
      {final List<DateTime>? time,
      @JsonKey(name: DailyWeatherKeys.temperatureMax)
      final List<double>? temperatureMax,
      @JsonKey(name: DailyWeatherKeys.temperatureMin)
      final List<double>? temperatureMin,
      @JsonKey(name: DailyWeatherKeys.sunrise) final List<DateTime>? sunrise,
      @JsonKey(name: DailyWeatherKeys.sunset) final List<DateTime>? sunset,
      @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
      final List<double?>? precipitationProbabilityMax,
      @JsonKey(name: DailyWeatherKeys.weatherCode)
      final List<int>? weatherCode}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  List<DateTime>? get time;
  @override
  @JsonKey(name: DailyWeatherKeys.temperatureMax)
  List<double>? get temperatureMax;
  @override
  @JsonKey(name: DailyWeatherKeys.temperatureMin)
  List<double>? get temperatureMin;
  @override
  @JsonKey(name: DailyWeatherKeys.sunrise)
  List<DateTime>? get sunrise;
  @override
  @JsonKey(name: DailyWeatherKeys.sunset)
  List<DateTime>? get sunset;
  @override
  @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
  List<double?>? get precipitationProbabilityMax;
  @override
  @JsonKey(name: DailyWeatherKeys.weatherCode)
  List<int>? get weatherCode;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
