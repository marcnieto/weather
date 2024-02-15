import 'package:flutter/widgets.dart';
import 'package:weather/models/forecast/forecast.dart';

class WeatherPage extends StatelessWidget {
  final Forecast forecast;

  const WeatherPage({
    super.key,
    required this.forecast,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Weather Page',
      ),
    );
  }
}
