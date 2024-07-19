// ignore_for_file: library_private_types_in_public_api

import 'dart:isolate';
import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/utils/task_handler/task_handler.dart';
import 'package:delivery_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ReceivePort? _receivePort;

  @override
  void initState() {
    super.initState();
    _initForegroundTask();
    ref.read(mapController).startLocationTracking();
  }

  Future<void> _initForegroundTask() async {
    var status = await Permission.locationWhenInUse.status;
    if (!status.isGranted) {
      await Permission.locationWhenInUse.request();
    } else {
      bool started = await FlutterForegroundTask.startService(
        notificationTitle: 'Konum Takibi',
        notificationText: 'Konumunuz arka planda takip ediliyor',
        callback: startCallback,
      );
      if (started) {
        _receivePort = FlutterForegroundTask.receivePort;
        _receivePort?.listen((message) {
          if (message is Position) {
            ref.read(mapController).getPosition(value: message);
          }
        });
      }

      _receivePort?.listen((message) {
        if (message is Position) {
          ref.read(mapController).getPosition(value: message);
        }
      });
    }
  }

  static void startCallback() {
    FlutterForegroundTask.setTaskHandler(LocationService());
  }

  @override
  void dispose() {
    _receivePort?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(bottomNavBarController);

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: watch.body(),
    );
  }
}
