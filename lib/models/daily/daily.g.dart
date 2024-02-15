// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      time: (json['time'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      temperatureMax: (json['temperature_2m_max'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      temperatureMin: (json['temperature_2m_min'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sunrise: (json['sunrise'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      sunset: (json['sunset'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      precipitationProbabilityMax:
          (json['precipitation_probability_max'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
      weatherCode: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.map((e) => e.toIso8601String()).toList(),
      'temperature_2m_max': instance.temperatureMax,
      'temperature_2m_min': instance.temperatureMin,
      'sunrise': instance.sunrise?.map((e) => e.toIso8601String()).toList(),
      'sunset': instance.sunset?.map((e) => e.toIso8601String()).toList(),
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'weather_code': instance.weatherCode,
    };
