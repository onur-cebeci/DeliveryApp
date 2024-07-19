import 'package:delivery_app/controller/active_jobs__controllers/active_jobs_controller.dart';
import 'package:delivery_app/controller/core/bottom_nav_bar_controller.dart';
import 'package:delivery_app/controller/home_screen_controllers/home_screen_controller.dart';
import 'package:delivery_app/controller/maps_controllers/map_controller.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavBarController =
    ChangeNotifierProvider((_) => BottomNavBarController());

final homeScreenController =
    ChangeNotifierProvider((_) => HomeScreenController());

final mapController = ChangeNotifierProvider((_) => MapController());
final activeJobsController =
    ChangeNotifierProvider((_) => ActiveJobsController());
