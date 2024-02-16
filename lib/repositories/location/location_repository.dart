import 'package:weather/models/location/location.dart';

abstract class LocationRepository {
  Future<bool> locationServicesGranted();
  Future<bool> requestPermission();
  Future<Location> getCurrentLocation();
}
