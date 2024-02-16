import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/utilities/weather_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_preferences.freezed.dart';
part 'user_preferences.g.dart';

const String kUserPreferencesKey = 'user_preferences';

@unfreezed
class UserPreferences with _$UserPreferences {
  factory UserPreferences({
    Location? currentLocation,
    @Default([]) List<Location> locations,
    @Default(TemperatureUnits.fahrenheit) String temperatureUnit,
    @Default(true) bool showHourlyForecast,
    @Default(true) bool showDailyForecast,
    @Default(7) int forecastDays,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}

extension UserPersistence on UserPreferences {
  Future<void> setPersistence() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(kUserPreferencesKey, json.encode(toJson()));
  }

  Future<void> fetchPersistence() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final data = sharedPreferences.getString(kUserPreferencesKey);

    if (data == null) return;

    final preferences = UserPreferences.fromJson(json.decode(data));

    currentLocation = preferences.currentLocation;
    locations = preferences.locations;
    temperatureUnit = preferences.temperatureUnit;
    showHourlyForecast = preferences.showHourlyForecast;
    showDailyForecast = preferences.showDailyForecast;
    forecastDays = preferences.forecastDays;
  }

  Future<void> setCurrentLocation(Location? currentLocation) async {
    this.currentLocation = currentLocation;
    await setPersistence();
  }

  Future<void> addLocation(Location location) async {
    locations.add(location);
    await setPersistence();
  }

  Future<void> removeLocationAt({required int index}) async {
    locations.removeAt(index);
    await setPersistence();
  }

  Future<void> setTemperatureUnit(String unit) async {
    temperatureUnit = unit;
    await setPersistence();
  }

  Future<void> setShowHourlyForecast(bool show) async {
    showHourlyForecast = show;
    await setPersistence();
  }

  Future<void> setShowDailyForecast(bool show) async {
    showDailyForecast = show;
    await setPersistence();
  }

  Future<void> setForecastDays(int days) async {
    forecastDays = days;
    await setPersistence();
  }
}
