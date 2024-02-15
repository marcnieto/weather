import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WeatherPageView extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) builder;
  final PageController _controller = PageController();

  WeatherPageView({
    super.key,
    required this.itemCount,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          itemCount: itemCount,
          itemBuilder: builder,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SmoothPageIndicator(
            controller: _controller,
            count: itemCount,
          ),
        )
      ],
    );
  }
}
