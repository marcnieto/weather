// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      temperature: (json['temperature_2m'] as num?)?.toDouble(),
      humidity: (json['relative_humidity_2m'] as num?)?.toDouble(),
      windSpeed: (json['wind_speed_10m'] as num?)?.toDouble(),
      direction: (json['wind_direction_10m'] as num?)?.toDouble(),
      isDay: json['is_day'] as int?,
      weatherCode: json['weather_code'] as int?,
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
      'temperature_2m': instance.temperature,
      'relative_humidity_2m': instance.humidity,
      'wind_speed_10m': instance.windSpeed,
      'wind_direction_10m': instance.direction,
      'is_day': instance.isDay,
      'weather_code': instance.weatherCode,
    };
