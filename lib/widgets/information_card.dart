import 'package:delivery_app/screens/home_screens/home_screen_detail.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/widgets/custom_rich_text.dart';
import 'package:flutter/cupertino.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    super.key,
    required this.size,
    required this.widget,
  });

  final Size size;
  final HomeDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            content: widget.jobsModel.packageLocation,
          ),
          CustomRichTextWidget(
            title: "Hedef Konum",
            content: widget.jobsModel.targetLocation,
          ),
          CustomRichTextWidget(
            title: "Açıklama",
            content: widget.jobsModel.desc,
          ),
          CustomRichTextWidget(
            title: "Fiyat",
            content: widget.jobsModel.price,
          ),
          CustomRichTextWidget(
            title: "Adet",
            content: widget.jobsModel.sum,
          ),
          CustomRichTextWidget(
            title: "Kargo Tipi",
            content: widget.jobsModel.productType,
          ),
          CustomRichTextWidget(
            title: "Adres",
            content: widget.jobsModel.address,
          ),
          CustomRichTextWidget(
            title: "İletişim",
            content: widget.jobsModel.phone,
          ),
          CustomRichTextWidget(
            title: "İlan Sahibi",
            content: widget.jobsModel.advertiser,
          ),
        ],
      ),
    );
  }
}
