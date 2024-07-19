import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/extensions.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:delivery_app/widgets/map_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(pageName: AppConstant.currentLocationTitle),
      body: MapScreenCard(
        height: context.dynamicHeight(1),
        width: context.dynamicWidth(1),
      ),
    );
  }
}
