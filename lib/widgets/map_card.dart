import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

class MapCard extends ConsumerWidget {
  const MapCard({
    super.key,
    required this.height,
    required this.width,
    required this.widget,
  });

  final double height;
  final double width;
  final JobsModel widget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(mapController);

    return SizedBox(
      height: height,
      width: width,
      child: FlutterMap(
        options: MapOptions(
            initialCenter: LatLng(widget.mapLat, widget.mapLng),
            initialZoom: 6.0),
        children: [
          TileLayer(
            urlTemplate: AppConstant.mapUrl,
          ),
          PolylineLayer(
            polylines: [
              Polyline(
                  points: watch.routerPointsList,
                  color: Colors.blue,
                  strokeWidth: 5),
            ],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(widget.mapLat, widget.mapLng),
                child: const Icon(
                  Icons.flag,
                  color: Colors.blue,
                  size: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
