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
      precipitation: (json['precipitation'] as num?)?.toDouble(),
      rain: (json['rain'] as num?)?.toDouble(),
      showers: (json['showers'] as num?)?.toDouble(),
      snowfall: (json['snowfall'] as num?)?.toDouble(),
      windSpeed: (json['wind_speed_10m'] as num?)?.toDouble(),
      direction: (json['wind_direction_10m'] as num?)?.toDouble(),
      cloudCover: (json['cloud_cover'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
      'temperature_2m': instance.temperature,
      'relative_humidity_2m': instance.humidity,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'showers': instance.showers,
      'snowfall': instance.snowfall,
      'wind_speed_10m': instance.windSpeed,
      'wind_direction_10m': instance.direction,
      'cloud_cover': instance.cloudCover,
    };
