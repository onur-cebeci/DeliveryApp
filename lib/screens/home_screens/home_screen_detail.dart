import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/controller/riverpod_menagement.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/router/app_router.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:delivery_app/widgets/information_card.dart';
import 'package:delivery_app/widgets/map_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeDetailScreen extends ConsumerStatefulWidget {
  const HomeDetailScreen({required this.jobsModel, super.key});
  final JobsModel jobsModel;
  @override
  ConsumerState<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends ConsumerState<HomeDetailScreen> {
  @override
  void initState() {
    super.initState();

    getRouteList();
  }

  Future<void> getRouteList() async {
    await ref.read(mapController).getMapService(model: widget.jobsModel);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: CustomBottonBarButton(model: widget.jobsModel),
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        pageName: AppConstant.homeScreenDetailTitle,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InformationCard(size: size, widget: widget),
              MapCard(
                  height: size.height / 2,
                  width: size.width - 30,
                  widget: widget.jobsModel),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottonBarButton extends ConsumerWidget {
  const CustomBottonBarButton({
    required this.model,
    super.key,
  });
  final JobsModel model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var read = ref.read(bottomNavBarController);

    return GestureDetector(
      onTap: () {
        context.router.pushAndPopUntil(
          const HomeRoute(),
          predicate: (_) => false,
        );
        read.getAccceptedList(model: model, context: context);
      },
      child: Container(
        padding: const EdgeInsets.all(AppConstant.padding10),
        margin: const EdgeInsets.all(AppConstant.padding5),
        decoration: BoxDecoration(
            color: CustomThemeData.primaryColor,
            borderRadius: BorderRadius.circular(AppConstant.padding5),
            border: Border.all(color: CustomThemeData.whiteColor)),
        child: Text(
          'Kabul Et',
          textAlign: TextAlign.center,
          style:
              customFont18SemiBold.copyWith(color: CustomThemeData.whiteColor),
        ),
      ),
    );
  }
}
