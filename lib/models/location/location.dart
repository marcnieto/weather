import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart' as geocode;

part 'location.freezed.dart';
part 'location.g.dart';

@unfreezed
class Location with _$Location {
  factory Location({
    required double latitude,
    required double longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

extension LocationCityName on Location {
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
