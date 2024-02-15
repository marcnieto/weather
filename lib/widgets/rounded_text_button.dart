import 'package:flutter/material.dart';
import 'package:weather/widgets/button.dart';

class RoundedTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  final double height;

  const RoundedTextButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.foregroundColor,
    required this.backgroundColor,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Button(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height / 2.0),
          color: backgroundColor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 7,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}
