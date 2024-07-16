import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(bottomNavBarController);
    var read = ref.read(bottomNavBarController);
    return BottomNavigationBar(
      items: read.items,
      currentIndex: watch.currentIndex,
      onTap: (i) => read.setCurrentIndex(i),
      fixedColor: CustomThemeData.blueColorDark,
    );
  }
}
