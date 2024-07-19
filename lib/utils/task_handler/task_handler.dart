import 'dart:async';
import 'dart:isolate';

import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:geolocator/geolocator.dart';

class LocationService extends TaskHandler {
  Timer? _timer;
  final int _interval = 10;

  @override
  Future<void> onStart(DateTime timestamp, SendPort? sendPort) async {
    _timer = Timer.periodic(Duration(seconds: _interval), (timer) async {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      sendPort?.send(position);
    });
  }

  Future<void> onEvent(DateTime timestamp, SendPort? sendPort) async {}
  @override
  Future<void> onDestroy(DateTime timestamp, SendPort? sendPort) async {
    _timer?.cancel();
  }

  void onButtonPressed(String id) {}

  @override
  void onRepeatEvent(DateTime timestamp, SendPort? sendPort) {}
}
