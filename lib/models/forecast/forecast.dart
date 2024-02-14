import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/current/current.dart';
import 'package:weather/models/current_units/current_units.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    @Default(0) double latitude,
    @Default(0) double longitude,
    Current? current,
    @JsonKey(name: 'current_units') CurrentUnits? currentUnits,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
