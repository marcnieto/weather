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
    List<int>? precipitationProbability,
    @JsonKey(name: HourlyWeatherKeys.cloudCover) List<int>? cloudCover,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}
