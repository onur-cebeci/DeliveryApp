// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:convert';

import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

class MapServices {
  Future<List<LatLng>> getMapRoute({required JobsModel model}) async {
    List<LatLng> routerPoints = [];
    final LatLng startPoint = LatLng(38.487375, 27.652417);
    final LatLng endPoint = LatLng(model.mapLat, model.mapLng);
    var url = Uri.parse(
        'https://api.openrouteservice.org/v2/directions/driving-car?api_key=${AppConstant.openRouteServiceApiKey}&start=${startPoint.longitude},${startPoint.latitude}&end=${endPoint.longitude},${endPoint.latitude}');

    try {
      var res = await http.get(url);

      routerPoints = [];
      var router =
          jsonDecode(res.body)['features'][0]['geometry']['coordinates'];
      print('Router Service' + '$router');

      for (var i = 0; i < router.length; i++) {
        var reep = router[i].toString();

        reep = reep.replaceAll("[", "");
        reep = reep.replaceAll("]", "");
        var lat1 = reep.split(',');
        var long1 = reep.split(',');

        routerPoints.add(LatLng(double.parse(lat1[1]), double.parse(long1[0])));
      }
      print('Services getMapRoute :$routerPoints');
      return routerPoints;
    } catch (e) {
      print("Error getMaproute $e");
    }
    return routerPoints;
  }
}
