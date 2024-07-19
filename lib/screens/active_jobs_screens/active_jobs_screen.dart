import 'package:delivery_app/controller/active_jobs__controllers/active_jobs_controller.dart';
import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/extensions.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:delivery_app/widgets/active_job_card.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:delivery_app/widgets/custom_show_dialog.dart';
import 'package:delivery_app/widgets/map_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveJobsScreen extends ConsumerWidget {
  const ActiveJobsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var readBottomNavController = ref.read(bottomNavBarController);
    var read = ref.read(activeJobsController);
    var watch = ref.watch(activeJobsController);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const CustomAppBar(pageName: AppConstant.activeJobsScreenTitle),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MapCard(
                  widget: readBottomNavController.acceptedList.first,
                  height: size.height / 1.75,
                  width: size.width - 30,
                ),
                watch.isArrive
                    ? ProductsListCard(read: read)
                    : ActiveJobCard(read: readBottomNavController),
              ],
            ),
          ),
        ));
  }
}

class ProductsListCard extends StatelessWidget {
  const ProductsListCard({
    super.key,
    required this.read,
  });

  final ActiveJobsController read;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppConstant.padding10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: read.productsList.length,
        itemBuilder: (context, i) {
          var index = read.productsList[i];
          return Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: AppConstant.padding15,
                  vertical: AppConstant.padding10),
              decoration: BoxDecoration(
                  color: CustomThemeData.backgroudColor,
                  border: Border.all(color: CustomThemeData.primaryColor),
                  borderRadius: BorderRadius.circular(AppConstant.padding5)),
              child: Container(
                padding: const EdgeInsets.all(AppConstant.padding10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(AppConstant.padding5),
                          decoration: BoxDecoration(
                            color: CustomThemeData.primaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: CustomThemeData.backgroudColor),
                          ),
                          child: Text(
                            '${++i}',
                            style: customFont10SemiBold.copyWith(
                                color: CustomThemeData.whiteColor),
                          ),
                        ),
                        const SizedBox(width: AppConstant.padding5),
                        const Text('Adres :'),
                      ],
                    ),
                    Text(index.address),
                    const SizedBox(height: AppConstant.padding20),
                    Row(
                      children: [
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppConstant.padding10,
                                vertical: AppConstant.padding5),
                            decoration: BoxDecoration(
                                color: CustomThemeData.primaryColor,
                                borderRadius: BorderRadius.circular(
                                    AppConstant.padding10)),
                            child: const Text(
                              AppConstant.deliveryCode,
                              style: customFont12Secondary,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppConstant.padding10,
                                vertical: AppConstant.padding5),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(
                                    AppConstant.padding10)),
                            child: const Text(
                              AppConstant.costumerMessageScreenTitle,
                              style: customFont12Secondary,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppConstant.padding10,
                                vertical: AppConstant.padding5),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(
                                    AppConstant.padding10)),
                            child: const Text(
                              AppConstant.revoke,
                              style: customFont12Secondary,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
