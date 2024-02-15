import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/blocs/weather/weather_bloc.dart';
import 'package:weather/models/forecast/forecast.dart';
import 'package:weather/screens/weather/widgets/weather_page.dart';
import 'package:weather/screens/weather/widgets/weather_page_view.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  Widget _weatherBlocBuilder(BuildContext context) =>
      BlocBuilder<WeatherBloc, WeatherState>(
        bloc: context.read<WeatherBloc>(),
        builder: (context, state) => state.maybeMap(
          orElse: () => WeatherPageView(
            itemCount: 5,
            builder: (context, index) => WeatherPage(
              forecast: Forecast(
                latitude: 0,
                longitude: 0,
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _weatherBlocBuilder(context);
  }
}
