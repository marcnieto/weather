// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
mixin _$Forecast {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  Current? get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_units')
  CurrentUnits? get currentUnits => throw _privateConstructorUsedError;
  Daily? get daily => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_units')
  DailyUnits? get dailyUnits => throw _privateConstructorUsedError;
  Hourly? get hourly => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_units')
  HourlyUnits? get hourlyUnits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res, Forecast>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      Current? current,
      @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
      Daily? daily,
      @JsonKey(name: 'daily_units') DailyUnits? dailyUnits,
      Hourly? hourly,
      @JsonKey(name: 'hourly_units') HourlyUnits? hourlyUnits});

  $CurrentCopyWith<$Res>? get current;
  $CurrentUnitsCopyWith<$Res>? get currentUnits;
  $DailyCopyWith<$Res>? get daily;
  $DailyUnitsCopyWith<$Res>? get dailyUnits;
  $HourlyCopyWith<$Res>? get hourly;
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res, $Val extends Forecast>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? current = freezed,
    Object? currentUnits = freezed,
    Object? daily = freezed,
    Object? dailyUnits = freezed,
    Object? hourly = freezed,
    Object? hourlyUnits = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily?,
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly?,
      hourlyUnits: freezed == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res>? get currentUnits {
    if (_value.currentUnits == null) {
      return null;
    }

    return $CurrentUnitsCopyWith<$Res>(_value.currentUnits!, (value) {
      return _then(_value.copyWith(currentUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res>? get daily {
    if (_value.daily == null) {
      return null;
    }

    return $DailyCopyWith<$Res>(_value.daily!, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res>? get dailyUnits {
    if (_value.dailyUnits == null) {
      return null;
    }

    return $DailyUnitsCopyWith<$Res>(_value.dailyUnits!, (value) {
      return _then(_value.copyWith(dailyUnits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res>? get hourly {
    if (_value.hourly == null) {
      return null;
    }

    return $HourlyCopyWith<$Res>(_value.hourly!, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits {
    if (_value.hourlyUnits == null) {
      return null;
    }

    return $HourlyUnitsCopyWith<$Res>(_value.hourlyUnits!, (value) {
      return _then(_value.copyWith(hourlyUnits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastImplCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$$ForecastImplCopyWith(
          _$ForecastImpl value, $Res Function(_$ForecastImpl) then) =
      __$$ForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      Current? current,
      @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
      Daily? daily,
      @JsonKey(name: 'daily_units') DailyUnits? dailyUnits,
      Hourly? hourly,
      @JsonKey(name: 'hourly_units') HourlyUnits? hourlyUnits});

  @override
  $CurrentCopyWith<$Res>? get current;
  @override
  $CurrentUnitsCopyWith<$Res>? get currentUnits;
  @override
  $DailyCopyWith<$Res>? get daily;
  @override
  $DailyUnitsCopyWith<$Res>? get dailyUnits;
  @override
  $HourlyCopyWith<$Res>? get hourly;
  @override
  $HourlyUnitsCopyWith<$Res>? get hourlyUnits;
}

/// @nodoc
class __$$ForecastImplCopyWithImpl<$Res>
    extends _$ForecastCopyWithImpl<$Res, _$ForecastImpl>
    implements _$$ForecastImplCopyWith<$Res> {
  __$$ForecastImplCopyWithImpl(
      _$ForecastImpl _value, $Res Function(_$ForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? current = freezed,
    Object? currentUnits = freezed,
    Object? daily = freezed,
    Object? dailyUnits = freezed,
    Object? hourly = freezed,
    Object? hourlyUnits = freezed,
  }) {
    return _then(_$ForecastImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current?,
      currentUnits: freezed == currentUnits
          ? _value.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily?,
      dailyUnits: freezed == dailyUnits
          ? _value.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits?,
      hourly: freezed == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly?,
      hourlyUnits: freezed == hourlyUnits
          ? _value.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastImpl implements _Forecast {
  _$ForecastImpl(
      {this.latitude = 0,
      this.longitude = 0,
      this.current,
      @JsonKey(name: 'current_units') this.currentUnits,
      this.daily,
      @JsonKey(name: 'daily_units') this.dailyUnits,
      this.hourly,
      @JsonKey(name: 'hourly_units') this.hourlyUnits});

  factory _$ForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastImplFromJson(json);

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;
  @override
  final Current? current;
  @override
  @JsonKey(name: 'current_units')
  final CurrentUnits? currentUnits;
  @override
  final Daily? daily;
  @override
  @JsonKey(name: 'daily_units')
  final DailyUnits? dailyUnits;
  @override
  final Hourly? hourly;
  @override
  @JsonKey(name: 'hourly_units')
  final HourlyUnits? hourlyUnits;

  @override
  String toString() {
    return 'Forecast(latitude: $latitude, longitude: $longitude, current: $current, currentUnits: $currentUnits, daily: $daily, dailyUnits: $dailyUnits, hourly: $hourly, hourlyUnits: $hourlyUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, current,
      currentUnits, daily, dailyUnits, hourly, hourlyUnits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      __$$ForecastImplCopyWithImpl<_$ForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastImplToJson(
      this,
    );
  }
}

abstract class _Forecast implements Forecast {
  factory _Forecast(
          {final double latitude,
          final double longitude,
          final Current? current,
          @JsonKey(name: 'current_units') final CurrentUnits? currentUnits,
          final Daily? daily,
          @JsonKey(name: 'daily_units') final DailyUnits? dailyUnits,
          final Hourly? hourly,
          @JsonKey(name: 'hourly_units') final HourlyUnits? hourlyUnits}) =
      _$ForecastImpl;

  factory _Forecast.fromJson(Map<String, dynamic> json) =
      _$ForecastImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  Current? get current;
  @override
  @JsonKey(name: 'current_units')
  CurrentUnits? get currentUnits;
  @override
  Daily? get daily;
  @override
  @JsonKey(name: 'daily_units')
  DailyUnits? get dailyUnits;
  @override
  Hourly? get hourly;
  @override
  @JsonKey(name: 'hourly_units')
  HourlyUnits? get hourlyUnits;
  @override
  @JsonKey(ignore: true)
  _$$ForecastImplCopyWith<_$ForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
