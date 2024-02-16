// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPreferencesImpl(
      currentLocation: json['currentLocation'] == null
          ? null
          : Location.fromJson(json['currentLocation'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      temperatureUnit:
          json['temperatureUnit'] as String? ?? TemperatureUnits.fahrenheit,
      showHourlyForecast: json['showHourlyForecast'] as bool? ?? true,
      showDailyForecast: json['showDailyForecast'] as bool? ?? true,
      forecastDays: json['forecastDays'] as int? ?? 7,
    );

Map<String, dynamic> _$$UserPreferencesImplToJson(
        _$UserPreferencesImpl instance) =>
    <String, dynamic>{
      'currentLocation': instance.currentLocation,
      'locations': instance.locations,
      'temperatureUnit': instance.temperatureUnit,
      'showHourlyForecast': instance.showHourlyForecast,
      'showDailyForecast': instance.showDailyForecast,
      'forecastDays': instance.forecastDays,
    };
