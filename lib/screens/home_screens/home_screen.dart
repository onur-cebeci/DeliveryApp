import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(bottomNavBarController);

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: watch.body(),
    );
  }
}
