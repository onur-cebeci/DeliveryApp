import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/services/map_services/map_services.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

enum MapStatus { initial, loading, complated }

class MapController extends ChangeNotifier {
  MapServices service = MapServices();
  MapStatus status = MapStatus.initial;

//
  List<LatLng> routerPointsList = [];
  Position? _position;
  void getPosition({required Position value}) {
    _position = value;
  }

  Future<void> getMapService({required JobsModel model}) async {
    status = MapStatus.loading;

    var list = await service.getMapRoute(
      model: model,
      startLat: _position!.latitude,
      startLng: _position!.longitude,
    );

    routerPointsList = list;

    status = MapStatus.complated;

    notifyListeners();
  }

  Future<void> startLocationTracking() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Konum hizmeti devre dışı');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Konum izni reddedildi');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Konum izinleri kalıcı olarak reddedildi');
    }

    LocationSettings locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
    );

    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position position) {
      _position = position;
      notifyListeners();
    });
  }
}
