// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) {
  return _CurrentUnits.fromJson(json);
}

/// @nodoc
mixin _$CurrentUnits {
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.temperature)
  String? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
  String? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.windSpeed)
  String? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: CurrentWeatherKeys.windDirection)
  String? get windDirection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUnitsCopyWith<CurrentUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUnitsCopyWith<$Res> {
  factory $CurrentUnitsCopyWith(
          CurrentUnits value, $Res Function(CurrentUnits) then) =
      _$CurrentUnitsCopyWithImpl<$Res, CurrentUnits>;
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: CurrentWeatherKeys.temperature) String? temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity) String? humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) String? windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) String? windDirection});
}

/// @nodoc
class _$CurrentUnitsCopyWithImpl<$Res, $Val extends CurrentUnits>
    implements $CurrentUnitsCopyWith<$Res> {
  _$CurrentUnitsCopyWithImpl(this._value, this._then);

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
    Object? windDirection = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String?,
      windDirection: freezed == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUnitsImplCopyWith<$Res>
    implements $CurrentUnitsCopyWith<$Res> {
  factory _$$CurrentUnitsImplCopyWith(
          _$CurrentUnitsImpl value, $Res Function(_$CurrentUnitsImpl) then) =
      __$$CurrentUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: CurrentWeatherKeys.temperature) String? temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity) String? humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) String? windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) String? windDirection});
}

/// @nodoc
class __$$CurrentUnitsImplCopyWithImpl<$Res>
    extends _$CurrentUnitsCopyWithImpl<$Res, _$CurrentUnitsImpl>
    implements _$$CurrentUnitsImplCopyWith<$Res> {
  __$$CurrentUnitsImplCopyWithImpl(
      _$CurrentUnitsImpl _value, $Res Function(_$CurrentUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
  }) {
    return _then(_$CurrentUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String?,
      windDirection: freezed == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentUnitsImpl implements _CurrentUnits {
  _$CurrentUnitsImpl(
      {this.time,
      @JsonKey(name: CurrentWeatherKeys.temperature) this.temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity) this.humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) this.windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection) this.windDirection});

  factory _$CurrentUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentUnitsImplFromJson(json);

  @override
  final String? time;
  @override
  @JsonKey(name: CurrentWeatherKeys.temperature)
  final String? temperature;
  @override
  @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
  final String? humidity;
  @override
  @JsonKey(name: CurrentWeatherKeys.windSpeed)
  final String? windSpeed;
  @override
  @JsonKey(name: CurrentWeatherKeys.windDirection)
  final String? windDirection;

  @override
  String toString() {
    return 'CurrentUnits(time: $time, temperature: $temperature, humidity: $humidity, windSpeed: $windSpeed, windDirection: $windDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, temperature, humidity, windSpeed, windDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      __$$CurrentUnitsImplCopyWithImpl<_$CurrentUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentUnitsImplToJson(
      this,
    );
  }
}

abstract class _CurrentUnits implements CurrentUnits {
  factory _CurrentUnits(
      {final String? time,
      @JsonKey(name: CurrentWeatherKeys.temperature) final String? temperature,
      @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
      final String? humidity,
      @JsonKey(name: CurrentWeatherKeys.windSpeed) final String? windSpeed,
      @JsonKey(name: CurrentWeatherKeys.windDirection)
      final String? windDirection}) = _$CurrentUnitsImpl;

  factory _CurrentUnits.fromJson(Map<String, dynamic> json) =
      _$CurrentUnitsImpl.fromJson;

  @override
  String? get time;
  @override
  @JsonKey(name: CurrentWeatherKeys.temperature)
  String? get temperature;
  @override
  @JsonKey(name: CurrentWeatherKeys.relativeHumidity)
  String? get humidity;
  @override
  @JsonKey(name: CurrentWeatherKeys.windSpeed)
  String? get windSpeed;
  @override
  @JsonKey(name: CurrentWeatherKeys.windDirection)
  String? get windDirection;
  @override
  @JsonKey(ignore: true)
  _$$CurrentUnitsImplCopyWith<_$CurrentUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
