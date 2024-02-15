// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return _Hourly.fromJson(json);
}

/// @nodoc
mixin _$Hourly {
  List<DateTime>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: HourlyWeatherKeys.temperature)
  List<double>? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
  List<double>? get precipitationProbability =>
      throw _privateConstructorUsedError;
  @JsonKey(name: HourlyWeatherKeys.cloudCover)
  List<double>? get cloudCover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyCopyWith<Hourly> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) then) =
      _$HourlyCopyWithImpl<$Res, Hourly>;
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: HourlyWeatherKeys.temperature) List<double>? temperature,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      List<double>? precipitationProbability,
      @JsonKey(name: HourlyWeatherKeys.cloudCover) List<double>? cloudCover});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res, $Val extends Hourly>
    implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? precipitationProbability = freezed,
    Object? cloudCover = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      precipitationProbability: freezed == precipitationProbability
          ? _value.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      cloudCover: freezed == cloudCover
          ? _value.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyImplCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$$HourlyImplCopyWith(
          _$HourlyImpl value, $Res Function(_$HourlyImpl) then) =
      __$$HourlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: HourlyWeatherKeys.temperature) List<double>? temperature,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      List<double>? precipitationProbability,
      @JsonKey(name: HourlyWeatherKeys.cloudCover) List<double>? cloudCover});
}

/// @nodoc
class __$$HourlyImplCopyWithImpl<$Res>
    extends _$HourlyCopyWithImpl<$Res, _$HourlyImpl>
    implements _$$HourlyImplCopyWith<$Res> {
  __$$HourlyImplCopyWithImpl(
      _$HourlyImpl _value, $Res Function(_$HourlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? temperature = freezed,
    Object? precipitationProbability = freezed,
    Object? cloudCover = freezed,
  }) {
    return _then(_$HourlyImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      temperature: freezed == temperature
          ? _value._temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      precipitationProbability: freezed == precipitationProbability
          ? _value._precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      cloudCover: freezed == cloudCover
          ? _value._cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyImpl implements _Hourly {
  _$HourlyImpl(
      {final List<DateTime>? time,
      @JsonKey(name: HourlyWeatherKeys.temperature)
      final List<double>? temperature,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      final List<double>? precipitationProbability,
      @JsonKey(name: HourlyWeatherKeys.cloudCover)
      final List<double>? cloudCover})
      : _time = time,
        _temperature = temperature,
        _precipitationProbability = precipitationProbability,
        _cloudCover = cloudCover;

  factory _$HourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyImplFromJson(json);

  final List<DateTime>? _time;
  @override
  List<DateTime>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature;
  @override
  @JsonKey(name: HourlyWeatherKeys.temperature)
  List<double>? get temperature {
    final value = _temperature;
    if (value == null) return null;
    if (_temperature is EqualUnmodifiableListView) return _temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _precipitationProbability;
  @override
  @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
  List<double>? get precipitationProbability {
    final value = _precipitationProbability;
    if (value == null) return null;
    if (_precipitationProbability is EqualUnmodifiableListView)
      return _precipitationProbability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _cloudCover;
  @override
  @JsonKey(name: HourlyWeatherKeys.cloudCover)
  List<double>? get cloudCover {
    final value = _cloudCover;
    if (value == null) return null;
    if (_cloudCover is EqualUnmodifiableListView) return _cloudCover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hourly(time: $time, temperature: $temperature, precipitationProbability: $precipitationProbability, cloudCover: $cloudCover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature, _temperature) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbability, _precipitationProbability) &&
            const DeepCollectionEquality()
                .equals(other._cloudCover, _cloudCover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature),
      const DeepCollectionEquality().hash(_precipitationProbability),
      const DeepCollectionEquality().hash(_cloudCover));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      __$$HourlyImplCopyWithImpl<_$HourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyImplToJson(
      this,
    );
  }
}

abstract class _Hourly implements Hourly {
  factory _Hourly(
      {final List<DateTime>? time,
      @JsonKey(name: HourlyWeatherKeys.temperature)
      final List<double>? temperature,
      @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
      final List<double>? precipitationProbability,
      @JsonKey(name: HourlyWeatherKeys.cloudCover)
      final List<double>? cloudCover}) = _$HourlyImpl;

  factory _Hourly.fromJson(Map<String, dynamic> json) = _$HourlyImpl.fromJson;

  @override
  List<DateTime>? get time;
  @override
  @JsonKey(name: HourlyWeatherKeys.temperature)
  List<double>? get temperature;
  @override
  @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
  List<double>? get precipitationProbability;
  @override
  @JsonKey(name: HourlyWeatherKeys.cloudCover)
  List<double>? get cloudCover;
  @override
  @JsonKey(ignore: true)
  _$$HourlyImplCopyWith<_$HourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
