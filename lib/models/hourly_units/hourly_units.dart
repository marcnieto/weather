import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/utilities/weather_keys.dart';

part 'hourly_units.freezed.dart';
part 'hourly_units.g.dart';

@freezed
class HourlyUnits with _$HourlyUnits {
  factory HourlyUnits({
    String? time,
    @JsonKey(name: HourlyWeatherKeys.temperature) String? temperature,
    @JsonKey(name: HourlyWeatherKeys.precipitationProbability)
    String? precipitationProbability,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);
}
