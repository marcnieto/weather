import 'package:flutter/material.dart';
import 'package:weather/models/hourly/hourly.dart';
import 'package:weather/models/hourly_units/hourly_units.dart';

class HourlySection extends StatelessWidget {
  final Hourly hourly;
  final HourlyUnits hourlyUnits;

  const HourlySection({
    super.key,
    required this.hourly,
    required this.hourlyUnits,
  });

  Widget _hourlyEntry() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const Column(
          children: [
            Text('Now'),
            Icon(Icons.sunny_snowing),
          ],
        ),
      );

  Widget _body() => SizedBox(
        height: 50,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 15),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) => _hourlyEntry(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}
