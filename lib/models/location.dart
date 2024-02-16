import 'package:geocoding/geocoding.dart' as geocode;

class Location {
  final double latitude;
  final double longitude;

  Location({
    required this.latitude,
    required this.longitude,
  });

  Future<String?> getCityName() async {
    List<geocode.Placemark> placemarks;

    try {
      placemarks = await geocode.placemarkFromCoordinates(latitude, longitude);
    } catch (_) {
      return null;
    }

    if (placemarks.isEmpty) {
      return null;
    }

    String? name = placemarks.first.locality != null &&
            placemarks.first.locality!.isNotEmpty
        ? placemarks.first.locality
        : placemarks.first.administrativeArea;

    return name != null && name.isEmpty ? null : name;
  }
}
