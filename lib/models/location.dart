import 'package:geocoding/geocoding.dart' as geocode;

class Location {
  final double latitude;
  final double longitude;

  Location({
    required this.latitude,
    required this.longitude,
  });

  Future<String?> getCityName() async {
    List<geocode.Placemark> placemarks =
        await geocode.placemarkFromCoordinates(latitude, longitude);

    if (placemarks.isEmpty) {
      return null;
    }

    return placemarks.first.locality;
  }
}