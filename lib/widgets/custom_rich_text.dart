import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';

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
