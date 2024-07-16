import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageName;
  const CustomAppBar({
    super.key,
    required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Row(
        children: [
          Icon(
            Icons.fire_truck,
            color: CustomThemeData.whiteColor,
          ),
          SizedBox(width: AppConstant.padding5),
          Text(
            'Delivery App',
            style: customFont18SemiBoldSecondary,
          ),
        ],
      ),
      actions: [
        Text(
          pageName,
          style: customFont16SemiBoldSecondary,
        ),
        const SizedBox(
          width: AppConstant.padding10,
        )
      ],
      centerTitle: false,
      backgroundColor: CustomThemeData.blueColorDark,
    );
  }

  Size get preferredSize => const Size.fromHeight(60);
}

class CustomAppBarV2 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarV2({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width - 100,
            child: Text(
              title,
              style: customFont16SemiBoldSecondary,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      backgroundColor: CustomThemeData.blueColorDark,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
