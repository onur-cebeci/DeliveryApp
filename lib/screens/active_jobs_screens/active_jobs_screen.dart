import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/widgets/active_job_card.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:delivery_app/widgets/map_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveJobsScreen extends ConsumerWidget {
  const ActiveJobsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var read = ref.read(bottomNavBarController);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const CustomAppBar(pageName: AppConstant.activeJobsScreenTitle),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MapCard(
                  widget: read.acceptedList.first,
                  height: size.height / 1.75,
                  width: size.width - 30,
                ),
                ActiveJobCard(read: read),
              ],
            ),
          ),
        ));
  }
}