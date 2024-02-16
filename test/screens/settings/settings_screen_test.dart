import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:weather/repositories/location/location_services_repository.dart';
import 'package:weather/screens/settings/settings_screen.dart';
import 'package:weather/user/user_preferences.dart';

@GenerateMocks([LocationServicesRepository])
import 'settings_screen_test.mocks.dart';

void main() async {
  testWidgets('Test Settings Screen - Location Services Disabled',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(false),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpSettingsScreen(
      tester,
      locationServices: locationServices,
    );

    expect(find.text('Show Hourly Forecast'), findsOneWidget);
    expect(find.text('Show Daily Forecast'), findsOneWidget);
    expect(find.text('Forecast Days'), findsOneWidget);
    expect(find.text('Temperature Unit'), findsOneWidget);
    expect(
      find.text(
          'To fetch weather data from your area, please consider enabling location services.'),
      findsOneWidget,
    );
  });

  testWidgets('Test Settings Screen - Location Services Enabled',
      (WidgetTester tester) async {
    const double latitude = 15;
    const double longitude = 15;

    final locationServices = MockLocationServicesRepository();

    when(
      locationServices.getCurrentLocation(),
    ).thenAnswer(
      (_) => Future.value(
        Location(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );

    when(
      locationServices.locationServicesGranted(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    when(
      locationServices.requestPermission(),
    ).thenAnswer(
      (_) => Future.value(true),
    );

    await pumpSettingsScreen(
      tester,
      locationServices: locationServices,
    );

    expect(find.text('Show Hourly Forecast'), findsOneWidget);
    expect(find.text('Show Daily Forecast'), findsOneWidget);
    expect(find.text('Forecast Days'), findsOneWidget);
    expect(find.text('Temperature Unit'), findsOneWidget);
    expect(
      find.text(
          'To fetch weather data from your area, please consider enabling location services.'),
      findsNothing,
    );
  });
}

Future<void> pumpSettingsScreen(
  WidgetTester tester, {
  required LocationRepository locationServices,
}) async {
  final locationServicesEnabled =
      await locationServices.locationServicesGranted();

  // User Preferences
  Location? currentLocation = locationServicesEnabled
      ? await locationServices.getCurrentLocation()
      : null;

  final userPreferences = UserPreferences(currentLocation: currentLocation);

  await tester.pumpWidget(
    MultiProvider(
      providers: [
        Provider<UserPreferences>.value(
          value: userPreferences,
        ),
        Provider<LocationRepository>.value(
          value: locationServices,
        ),
      ],
      child: MaterialApp(
        home: SettingsScreen(
          preferences: userPreferences,
        ),
      ),
    ),
  );
}
