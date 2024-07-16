import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/screens/home_screens/home_screen.dart';
import 'package:delivery_app/screens/home_screens/home_screen_detail.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: HomeDetailRoute.page,
        )
      ];
}

final router = AppRouter();
