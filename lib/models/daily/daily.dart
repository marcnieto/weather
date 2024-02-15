import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
class Daily with _$Daily {
  factory Daily({
    List<DateTime>? time,
    @JsonKey(name: DailyWeatherKeys.temperatureMax)
    List<double>? temperatureMax,
    @JsonKey(name: DailyWeatherKeys.temperatureMin)
    List<double>? temperatureMin,
    @JsonKey(name: DailyWeatherKeys.sunrise) List<DateTime>? sunrise,
    @JsonKey(name: DailyWeatherKeys.sunset) List<DateTime>? sunset,
    @JsonKey(name: DailyWeatherKeys.precipitationProbabilityMax)
    List<double>? precipitationProbabilityMax,
    @JsonKey(name: DailyWeatherKeys.weatherCode) List<int>? weatherCode,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}
