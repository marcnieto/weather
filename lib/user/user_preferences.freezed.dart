// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) {
  return _UserPreferences.fromJson(json);
}

/// @nodoc
mixin _$UserPreferences {
  Location? get currentLocation => throw _privateConstructorUsedError;
  set currentLocation(Location? value) => throw _privateConstructorUsedError;
  List<Location> get locations => throw _privateConstructorUsedError;
  set locations(List<Location> value) => throw _privateConstructorUsedError;
  String get temperatureUnit => throw _privateConstructorUsedError;
  set temperatureUnit(String value) => throw _privateConstructorUsedError;
  bool get showHourlyForecast => throw _privateConstructorUsedError;
  set showHourlyForecast(bool value) => throw _privateConstructorUsedError;
  bool get showDailyForecast => throw _privateConstructorUsedError;
  set showDailyForecast(bool value) => throw _privateConstructorUsedError;
  int get forecastDays => throw _privateConstructorUsedError;
  set forecastDays(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreferencesCopyWith<UserPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
          UserPreferences value, $Res Function(UserPreferences) then) =
      _$UserPreferencesCopyWithImpl<$Res, UserPreferences>;
  @useResult
  $Res call(
      {Location? currentLocation,
      List<Location> locations,
      String temperatureUnit,
      bool showHourlyForecast,
      bool showDailyForecast,
      int forecastDays});

  $LocationCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res, $Val extends UserPreferences>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? locations = null,
    Object? temperatureUnit = null,
    Object? showHourlyForecast = null,
    Object? showDailyForecast = null,
    Object? forecastDays = null,
  }) {
    return _then(_value.copyWith(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      temperatureUnit: null == temperatureUnit
          ? _value.temperatureUnit
          : temperatureUnit // ignore: cast_nullable_to_non_nullable
              as String,
      showHourlyForecast: null == showHourlyForecast
          ? _value.showHourlyForecast
          : showHourlyForecast // ignore: cast_nullable_to_non_nullable
              as bool,
      showDailyForecast: null == showDailyForecast
          ? _value.showDailyForecast
          : showDailyForecast // ignore: cast_nullable_to_non_nullable
              as bool,
      forecastDays: null == forecastDays
          ? _value.forecastDays
          : forecastDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get currentLocation {
    if (_value.currentLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.currentLocation!, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserPreferencesImplCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$$UserPreferencesImplCopyWith(_$UserPreferencesImpl value,
          $Res Function(_$UserPreferencesImpl) then) =
      __$$UserPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Location? currentLocation,
      List<Location> locations,
      String temperatureUnit,
      bool showHourlyForecast,
      bool showDailyForecast,
      int forecastDays});

  @override
  $LocationCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class __$$UserPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res, _$UserPreferencesImpl>
    implements _$$UserPreferencesImplCopyWith<$Res> {
  __$$UserPreferencesImplCopyWithImpl(
      _$UserPreferencesImpl _value, $Res Function(_$UserPreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? locations = null,
    Object? temperatureUnit = null,
    Object? showHourlyForecast = null,
    Object? showDailyForecast = null,
    Object? forecastDays = null,
  }) {
    return _then(_$UserPreferencesImpl(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      temperatureUnit: null == temperatureUnit
          ? _value.temperatureUnit
          : temperatureUnit // ignore: cast_nullable_to_non_nullable
              as String,
      showHourlyForecast: null == showHourlyForecast
          ? _value.showHourlyForecast
          : showHourlyForecast // ignore: cast_nullable_to_non_nullable
              as bool,
      showDailyForecast: null == showDailyForecast
          ? _value.showDailyForecast
          : showDailyForecast // ignore: cast_nullable_to_non_nullable
              as bool,
      forecastDays: null == forecastDays
          ? _value.forecastDays
          : forecastDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreferencesImpl implements _UserPreferences {
  _$UserPreferencesImpl(
      {this.currentLocation,
      this.locations = const [],
      this.temperatureUnit = TemperatureUnits.fahrenheit,
      this.showHourlyForecast = true,
      this.showDailyForecast = true,
      this.forecastDays = 7});

  factory _$UserPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreferencesImplFromJson(json);

  @override
  Location? currentLocation;
  @override
  @JsonKey()
  List<Location> locations;
  @override
  @JsonKey()
  String temperatureUnit;
  @override
  @JsonKey()
  bool showHourlyForecast;
  @override
  @JsonKey()
  bool showDailyForecast;
  @override
  @JsonKey()
  int forecastDays;

  @override
  String toString() {
    return 'UserPreferences(currentLocation: $currentLocation, locations: $locations, temperatureUnit: $temperatureUnit, showHourlyForecast: $showHourlyForecast, showDailyForecast: $showDailyForecast, forecastDays: $forecastDays)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      __$$UserPreferencesImplCopyWithImpl<_$UserPreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreferencesImplToJson(
      this,
    );
  }
}

abstract class _UserPreferences implements UserPreferences {
  factory _UserPreferences(
      {Location? currentLocation,
      List<Location> locations,
      String temperatureUnit,
      bool showHourlyForecast,
      bool showDailyForecast,
      int forecastDays}) = _$UserPreferencesImpl;

  factory _UserPreferences.fromJson(Map<String, dynamic> json) =
      _$UserPreferencesImpl.fromJson;

  @override
  Location? get currentLocation;
  set currentLocation(Location? value);
  @override
  List<Location> get locations;
  set locations(List<Location> value);
  @override
  String get temperatureUnit;
  set temperatureUnit(String value);
  @override
  bool get showHourlyForecast;
  set showHourlyForecast(bool value);
  @override
  bool get showDailyForecast;
  set showDailyForecast(bool value);
  @override
  int get forecastDays;
  set forecastDays(int value);
  @override
  @JsonKey(ignore: true)
  _$$UserPreferencesImplCopyWith<_$UserPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
