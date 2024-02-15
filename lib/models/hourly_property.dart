class HourlyProperty {
  final DateTime time;
  final double temperature;
  final double precipitationProbability;
  final bool isDay;
  final int weatherCode;
  final String temperatureUnit;
  final String precipitationProbabilityUnit;

  HourlyProperty({
    required this.time,
    required this.temperature,
    required this.precipitationProbability,
    required this.isDay,
    required this.weatherCode,
    required this.temperatureUnit,
    required this.precipitationProbabilityUnit,
  });
}
