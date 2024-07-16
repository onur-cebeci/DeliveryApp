import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/extensions.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:delivery_app/widgets/home_screen_body_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenBody extends ConsumerWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var read = ref.read(homeScreenController);

    return Scaffold(
      appBar: const CustomAppBar(pageName: AppConstant.homeScreenBodyTitle),
      body: SafeArea(
          child: ListView.builder(
        itemCount: read.jobsList.length,
        itemBuilder: (context, index) {
          var currentIndex = read.jobsList[index];

          return HomeScreenBodyCard(currentIndex: currentIndex);
        },
      )),
    );
  }
}


//CustomListTile(currentIndex: currentIndex)