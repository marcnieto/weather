import 'package:flutter/material.dart';
import 'package:weather/utilities/ui_template.dart';

import 'package:weather/widgets/rounded_text_button.dart';

class WeatherInitialPage extends StatelessWidget {
  final void Function()? onEnableLocationPressed;

  const WeatherInitialPage({
    super.key,
    this.onEnableLocationPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Please enable location services or add a location',
            style: TextStyleSpec.normalMediumLight,
          ),
          const SizedBox(height: PaddingSpec.medium),
          RoundedTextButton(
            onPressed: onEnableLocationPressed,
            text: 'Enable Location Services',
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            height: 40,
          ),
        ],
      ),
    );
  }
}
