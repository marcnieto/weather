import 'package:weather/models/location.dart';
import 'package:weather/utilities/weather_keys.dart';

class UserPreferences {
  Location? currentLocation;
  List<Location> locations;
  String temperatureUnit;
  bool showHourlyForecast;
  bool showDailyForecast;
  int forecastDays;

  UserPreferences({
    this.currentLocation,
    this.locations = const [],
    this.temperatureUnit = TemperatureUnits.fahrenheit,
    this.showHourlyForecast = false,
    this.showDailyForecast = false,
    this.forecastDays = 7,
  });
}
