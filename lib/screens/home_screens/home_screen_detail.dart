import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeDetailScreen extends ConsumerWidget {
  const HomeDetailScreen({required this.jobsModel, super.key});
  final JobsModel jobsModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        pageName: 'İlan Detay',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width,
            padding: const EdgeInsets.all(AppConstant.padding10),
            margin: const EdgeInsets.all(AppConstant.padding10),
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  color: CustomThemeData.primaryColor,
                  blurRadius: 5,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.outer)
            ], borderRadius: BorderRadius.circular(AppConstant.padding10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRichTextWidget(
                  title: "Konum",
                  content: jobsModel.packageLocation,
                ),
                CustomRichTextWidget(
                  title: "Hedef Konum",
                  content: jobsModel.targetLocation,
                ),
                CustomRichTextWidget(
                  title: "Açıklama",
                  content: jobsModel.desc,
                ),
                CustomRichTextWidget(
                  title: "Fiyat",
                  content: jobsModel.price,
                ),
                CustomRichTextWidget(
                  title: "Adet",
                  content: jobsModel.sum,
                ),
                CustomRichTextWidget(
                  title: "Kargo Tipi",
                  content: jobsModel.productType,
                ),
                CustomRichTextWidget(
                  title: "Adres",
                  content: jobsModel.address,
                ),
                CustomRichTextWidget(
                  title: "İletişim",
                  content: jobsModel.phone,
                ),
                CustomRichTextWidget(
                  title: "İlan Sahibi",
                  content: jobsModel.advertiser,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRichTextWidget extends StatelessWidget {
  const CustomRichTextWidget({
    super.key,
    required this.content,
    required this.title,
  });

  final String content;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstant.padding5),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "$title : ",
              style: customFont15Bold.copyWith(
                  color: CustomThemeData.primaryColor)),
          TextSpan(text: content, style: customFont15),
        ]),
      ),
    );
  }
}
