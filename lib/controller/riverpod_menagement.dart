import 'package:delivery_app/controller/core/bottom_nav_bar_controller.dart';
import 'package:delivery_app/controller/home_screen_controllers/hom_screen_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavBarController =
    ChangeNotifierProvider((_) => BottomNavBarController());

final homeScreenController =
    ChangeNotifierProvider((_) => HomeScreenController());
