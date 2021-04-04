part of base;

Future<Position> getCurrentPosition() async {
  // verify permissions
  LocationPermission permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();
  }
  // get current position
  try {
    Position _currentPosition;
    _currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    return _currentPosition;
  } catch (e) {
    throw (e);
  }
}

// Method to get Country/Address from position:
Future<Placemark> getGeolocationPlaceMark(Position position) async {
  var places = await placemarkFromCoordinates(
    position.latitude,
    position.longitude,
  );
  if (places != null && places.isNotEmpty) {
    final Placemark place = places.first;
    return place;
  } else
    return null;
}
