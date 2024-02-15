import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'hourly.freezed.dart';
part 'hourly.g.dart';

@freezed
class Hourly with _$Hourly {
  factory Hourly({
    List<DateTime>? time,
    @JsonKey(name: HourlyWeatherKeys.temperature) List<double>? temperature,
    @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
    List<double>? precipitationProbability,
    @JsonKey(name: HourlyWeatherKeys.isDay) List<int>? isDay,
    @JsonKey(name: HourlyWeatherKeys.weatherCode) List<int>? weatherCode,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}
