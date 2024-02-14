import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/current/current.dart';
import 'package:weather/models/current_units/current_units.dart';
import 'package:weather/models/daily/daily.dart';
import 'package:weather/models/daily_units/daily_units.dart';
import 'package:weather/models/hourly/hourly.dart';
import 'package:weather/models/hourly_units/hourly_units.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    @Default(0) double latitude,
    @Default(0) double longitude,
    Current? current,
    @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
    Daily? daily,
    @JsonKey(name: 'daily_units') DailyUnits? dailyUnits,
    Hourly? hourly,
    @JsonKey(name: 'hourly_units') HourlyUnits? hourlyUnits,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
