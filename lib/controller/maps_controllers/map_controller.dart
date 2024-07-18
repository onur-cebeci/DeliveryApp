import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/services/map_services.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

enum MapStatus { initial, loading, complated }

class MapController extends ChangeNotifier {
  MapServices service = MapServices();
  MapStatus status = MapStatus.initial;

//
  List<LatLng> routerPointsList = [];

  Future<void> getMapService({required JobsModel model}) async {
    status = MapStatus.loading;

    var list = await service.getMapRoute(model: model);

    routerPointsList = list;

    status = MapStatus.complated;

    notifyListeners();
  }
}
