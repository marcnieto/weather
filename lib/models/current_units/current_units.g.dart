// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUnitsImpl _$$CurrentUnitsImplFromJson(Map<String, dynamic> json) =>
    _$CurrentUnitsImpl(
      time: json['time'] as String?,
      temperature: json['temperature_2m'] as String?,
      humidity: json['relative_humidity_2m'] as String?,
      precipitation: json['precipitation'] as String?,
      rain: json['rain'] as String?,
      showers: json['showers'] as String?,
      snowfall: json['snowfall'] as String?,
      windSpeed: json['wind_speed_10m'] as String?,
      windDirection: json['wind_direction_10m'] as String?,
      cloudCover: json['cloud_cover'] as String?,
    );

Map<String, dynamic> _$$CurrentUnitsImplToJson(_$CurrentUnitsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature,
      'relative_humidity_2m': instance.humidity,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'showers': instance.showers,
      'snowfall': instance.snowfall,
      'wind_speed_10m': instance.windSpeed,
      'wind_direction_10m': instance.windDirection,
      'cloud_cover': instance.cloudCover,
    };
