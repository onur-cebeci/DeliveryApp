import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/controller/core/bottom_nav_bar_controller.dart';
import 'package:delivery_app/router/app_router.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActiveJobCard extends StatelessWidget {
  const ActiveJobCard({
    super.key,
    required this.read,
  });

  final BottomNavBarController read;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text("#${read.acceptedList.first.id}"),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConstant.padding15,
                    vertical: AppConstant.padding5),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(AppConstant.padding10)),
                child: const Text(
                  "Devam Ediyor",
                  style: customFont12Secondary,
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
                    read.acceptedList.first.packageLocation,
                    style: customFont16Bold,
                  ),
                  Text(
                    read.acceptedList.first.beginDate,
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
                      read.acceptedList.first.targetLocation,
                      style: customFont16Bold,
                    ),
                    Text(
                      read.acceptedList.first.endDate,
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
                read.acceptedList.first.advertiser,
                style: customFont15Bold.copyWith(
                    color: CustomThemeData.primaryColor),
              ),
              const Spacer(),
              Padding(
                  padding: const EdgeInsets.only(right: AppConstant.padding10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          context.router.push(const ActiveJobsMessageRoute());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstant.padding15,
                              vertical: AppConstant.padding5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 208, 189, 19),
                              borderRadius:
                                  BorderRadius.circular(AppConstant.padding10)),
                          child: const Text(
                            "Mesaj",
                            style: customFont12Secondary,
                          ),
                        ),
                      ),
                      const SizedBox(width: AppConstant.padding5),
                      InkWell(
                        onTap: () {
                          read.removeAccceptedList();
                          context.router.pushAndPopUntil(
                            const HomeRoute(),
                            predicate: (_) => false,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppConstant.padding15,
                              vertical: AppConstant.padding5),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(AppConstant.padding10)),
                          child: const Text(
                            "İptal Et",
                            style: customFont12Secondary,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}