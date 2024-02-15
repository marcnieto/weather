import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather/utilities/ui_template.dart';

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
          padding: const EdgeInsets.only(bottom: PaddingSpec.large),
          child: SmoothPageIndicator(
            controller: _controller,
            count: itemCount,
            effect: const WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4,
              type: WormType.thinUnderground,
            ),
          ),
        )
      ],
    );
  }
}
