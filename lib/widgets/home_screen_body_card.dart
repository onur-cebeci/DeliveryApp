import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/router/app_router.dart';

import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBodyCard extends StatelessWidget {
  const HomeScreenBodyCard({
    super.key,
    required this.currentIndex,
  });

  final JobsModel currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(HomeDetailRoute(jobsModel: currentIndex));
      },
      child: Container(
        margin: const EdgeInsets.all(
          AppConstant.padding15,
        ),
        padding: const EdgeInsets.all(
          AppConstant.padding15,
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.blueGrey.withOpacity(0.4))
            ],
            borderRadius: BorderRadius.circular(AppConstant.padding15),
            color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("#${currentIndex.id}"),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppConstant.padding15,
                      vertical: AppConstant.padding5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                          BorderRadius.circular(AppConstant.padding10)),
                  child: Text(
                    currentIndex.state,
                    style: customFont14Secondary,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: CustomThemeData.blackColorLight,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      currentIndex.packageLocation,
                      style: customFont16Bold,
                    ),
                    Text(
                      currentIndex.beginDate,
                      style: customFont10,
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(CupertinoIcons.arrow_right),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppConstant.padding10),
                  child: Column(
                    children: [
                      Text(
                        currentIndex.targetLocation,
                        style: customFont16Bold,
                      ),
                      Text(
                        currentIndex.endDate,
                        style: customFont10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstant.padding10),
            Row(
              children: [
                const Icon(Icons.person),
                Text(
                  currentIndex.advertiser,
                  style: customFont15Bold.copyWith(
                      color: CustomThemeData.primaryColor),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: AppConstant.padding10),
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: CustomThemeData.blueColor,
                    size: 28,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
