import 'package:weather/models/location.dart';

abstract class LocationRepository {
  Future<bool> locationServicesGranted();
  Future<bool> requestPermission();
  Future<Location> getCurrentLocation();
}
