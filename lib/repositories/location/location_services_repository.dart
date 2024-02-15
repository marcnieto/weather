import 'package:weather/models/location.dart';
import 'package:weather/repositories/location/location_repository.dart';
import 'package:geolocator/geolocator.dart';

class LocationServicesRepository implements LocationRepository {
  @override
  Future<bool> requestPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  @override
  Future<bool> locationServicesGranted() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  @override
  Future<Location> getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition();
    return Location(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}
