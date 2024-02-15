class DailyProperty {
  final DateTime time;
  final double temperatureMax;
  final double temperatureMin;
  final double precipitationProbability;

  final int weatherCode;
  final String temperatureUnit;
  final String precipitationProbabilityUnit;

  DailyProperty({
    required this.time,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.precipitationProbability,
    required this.weatherCode,
    required this.temperatureUnit,
    required this.precipitationProbabilityUnit,
  });
}
