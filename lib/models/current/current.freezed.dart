// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  DateTime? get time => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.temperature)
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
  double? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.windSpeed)
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.windDirection)
  double? get direction => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.isDay)
  int? get isDay => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.weatherCode)
  int? get weatherCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {DateTime? time,
      @JsonKey(name: CurrentWeatherKeys.temperature) double? temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity) double? humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) double? windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) double? direction,
      @JsonKey(name: CurrentWeatherKeys.isDay) int? isDay,
      @JsonKey(name: CurrentWeatherKeys.weatherCode) int? weatherCode});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? direction = freezed,
    Object? isDay = freezed,
    Object? weatherCode = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? time,
      @JsonKey(name: CurrentWeatherKeys.temperature) double? temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity) double? humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) double? windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) double? direction,
      @JsonKey(name: CurrentWeatherKeys.isDay) int? isDay,
      @JsonKey(name: CurrentWeatherKeys.weatherCode) int? weatherCode});
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? direction = freezed,
    Object? isDay = freezed,
    Object? weatherCode = freezed,
  }) {
    return _then(_$CurrentImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  _$CurrentImpl(
      {this.time,
      @JsonKey(name: CurrentWeatherKeys.temperature) this.temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity) this.humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) this.windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) this.direction,
      @JsonKey(name: CurrentWeatherKeys.isDay) this.isDay,
      @JsonKey(name: CurrentWeatherKeys.weatherCode) this.weatherCode});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  final DateTime? time;
  @override
  @JsonKey(name: CurrentWeatherKeys.temperature)
  final double? temperature;
  @override
  @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
  final double? humidity;
  @override
  @JsonKey(name: CurrentWeatherKeys.windSpeed)
  final double? windSpeed;
  @override
  @JsonKey(name: CurrentWeatherKeys.windDirection)
  final double? direction;
  @override
  @JsonKey(name: CurrentWeatherKeys.isDay)
  final int? isDay;
  @override
  @JsonKey(name: CurrentWeatherKeys.weatherCode)
  final int? weatherCode;

  @override
  String toString() {
    return 'Current(time: $time, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, direction: $direction, isDay: $isDay, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, humidity,
      windSpeed, direction, isDay, weatherCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  factory _Current(
      {final DateTime? time,
      @JsonKey(name: CurrentWeatherKeys.temperature) final double? temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
      final double? humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) final double? windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) final double? direction,
      @JsonKey(name: CurrentWeatherKeys.isDay) final int? isDay,
      @JsonKey(name: CurrentWeatherKeys.weatherCode)
      final int? weatherCode}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  DateTime? get time;
  @override
  @JsonKey(name: CurrentWeatherKeys.temperature)
  double? get temperature;
  @override
  @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
  double? get humidity;
  @override
  @JsonKey(name: CurrentWeatherKeys.windSpeed)
  double? get windSpeed;
  @override
  @JsonKey(name: CurrentWeatherKeys.windDirection)
  double? get direction;
  @override
  @JsonKey(name: CurrentWeatherKeys.isDay)
  int? get isDay;
  @override
  @JsonKey(name: CurrentWeatherKeys.weatherCode)
  int? get weatherCode;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
