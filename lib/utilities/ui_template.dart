import 'package:flutter/material.dart';

abstract class ColorSpec {
  static const Color skyBlue = Color(0xFF448EE4);
  static const Color darkBlue = Color(0xFF00008B);
  static const Color moonYellow = Color(0xFFF5EBA0);
}

abstract class PaddingSpec {
  static const double extraSmall = 5.0;
  static const double small = 10.0;
  static const double medium = 15.0;
  static const double large = 20.0;
  static const double extraLarge = 25.0;
}

abstract class MicroDimensionSpec {
  static const double extraSmall = 0.2;
  static const double small = 0.4;
  static const double medium = 0.6;
  static const double large = 0.8;
  static const double extraLarge = 1.0;
}

abstract class SmallSizeSpec {
  static const double extraSmall = 2.0;
  static const double small = 4.0;
  static const double medium = 6.0;
  static const double large = 8.0;
  static const double extraLarge = 10.0;
}

abstract class MediumSizeSpec {
  static const double extraSmall = 10.0;
  static const double small = 15.0;
  static const double medium = 20.0;
  static const double large = 25.0;
  static const double extraLarge = 30.0;
}

abstract class CornerRadiusSpec {
  static const double extraSmall = 5.0;
  static const double small = 10.0;
  static const double medium = 15.0;
  static const double large = 20.0;
  static const double extraLarge = 25.0;
}

abstract class TextStyleSpec {
  static const TextStyle normalSmallLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle normalMediumLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle normalLargeLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );

  static const TextStyle boldSmallLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle boldMediumLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle boldLargeLight = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );

  static const TextStyle normalSmallDark = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle normalMediumDark = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle normalLargeDark = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );

  static const TextStyle boldSmallDark = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static const TextStyle boldMediumDark = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle boldLargeDark = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 20,
  );
}
