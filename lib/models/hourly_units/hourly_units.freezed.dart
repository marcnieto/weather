// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) {
  return _HourlyUnits.fromJson(json);
}

/// @nodoc
mixin _$HourlyUnits {
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: HourlyWeatherKeys.temperature)
  String? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: HourlyWeatherKeys.cloudCover)
  String? get cloudCover => throw _privateConstructorUsedError;
  @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
  String? get precipitationProbability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
          HourlyUnits value, $Res Function(HourlyUnits) then) =
      _$HourlyUnitsCopyWithImpl<$Res, HourlyUnits>;
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: HourlyWeatherKeys.temperature) String? temperature,
      @JsonKey(name: HourlyWeatherKeys.cloudCover) String? cloudCover,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      String? precipitationProbability});
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res, $Val extends HourlyUnits>
    implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? cloudCover = freezed,
    Object? precipitationProbability = freezed,
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
      cloudCover: freezed == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as String?,
      precipitationProbability: freezed == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyUnitsImplCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$$HourlyUnitsImplCopyWith(
          _$HourlyUnitsImpl value, $Res Function(_$HourlyUnitsImpl) then) =
      __$$HourlyUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? time,
      @JsonKey(name: HourlyWeatherKeys.temperature) String? temperature,
      @JsonKey(name: HourlyWeatherKeys.cloudCover) String? cloudCover,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      String? precipitationProbability});
}

/// @nodoc
class __$$HourlyUnitsImplCopyWithImpl<$Res>
    extends _$HourlyUnitsCopyWithImpl<$Res, _$HourlyUnitsImpl>
    implements _$$HourlyUnitsImplCopyWith<$Res> {
  __$$HourlyUnitsImplCopyWithImpl(
      _$HourlyUnitsImpl _value, $Res Function(_$HourlyUnitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? cloudCover = freezed,
    Object? precipitationProbability = freezed,
  }) {
    return _then(_$HourlyUnitsImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
      cloudCover: freezed == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as String?,
      precipitationProbability: freezed == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyUnitsImpl implements _HourlyUnits {
  _$HourlyUnitsImpl(
      {this.time,
      @JsonKey(name: HourlyWeatherKeys.temperature) this.temperature,
      @JsonKey(name: HourlyWeatherKeys.cloudCover) this.cloudCover,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      this.precipitationProbability});

  factory _$HourlyUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyUnitsImplFromJson(json);

  @override
  final String? time;
  @override
  @JsonKey(name: HourlyWeatherKeys.temperature)
  final String? temperature;
  @override
  @JsonKey(name: HourlyWeatherKeys.cloudCover)
  final String? cloudCover;
  @override
  @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
  final String? precipitationProbability;

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature: $temperature, cloudCover: $cloudCover, precipitationProbability: $precipitationProbability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyUnitsImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.cloudCover, cloudCover) ||
                other.cloudCover == cloudCover) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, temperature, cloudCover, precipitationProbability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      __$$HourlyUnitsImplCopyWithImpl<_$HourlyUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyUnitsImplToJson(
      this,
    );
  }
}

abstract class _HourlyUnits implements HourlyUnits {
  factory _HourlyUnits(
      {final String? time,
      @JsonKey(name: HourlyWeatherKeys.temperature) final String? temperature,
      @JsonKey(name: HourlyWeatherKeys.cloudCover) final String? cloudCover,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      final String? precipitationProbability}) = _$HourlyUnitsImpl;

  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =
      _$HourlyUnitsImpl.fromJson;

  @override
  String? get time;
  @override
  @JsonKey(name: HourlyWeatherKeys.temperature)
  String? get temperature;
  @override
  @JsonKey(name: HourlyWeatherKeys.cloudCover)
  String? get cloudCover;
  @override
  @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
  String? get precipitationProbability;
  @override
  @JsonKey(ignore: true)
  _$$HourlyUnitsImplCopyWith<_$HourlyUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
