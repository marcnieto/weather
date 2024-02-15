import 'package:flutter/widgets.dart';

class WeatherPageView extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) builder;
  final PageController controller;

  const WeatherPageView({
    super.key,
    required this.itemCount,
    required this.builder,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      controller: controller,
      itemCount: itemCount,
      itemBuilder: builder,
    );
  }
}
