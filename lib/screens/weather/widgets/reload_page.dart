import 'package:flutter/material.dart';
import 'package:weather/utilities/ui_template.dart';
import 'package:weather/widgets/button.dart';

class ReloadPage extends StatelessWidget {
  final void Function() onPressed;

  const ReloadPage({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Something went wrong. Please try again.',
            style: TextStyleSpec.normalMediumLight,
          ),
          const SizedBox(height: PaddingSpec.medium),
          Button(
            onPressed: onPressed,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
