import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/extensions.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(pageName: AppConstant.profileTitle),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: AppConstant.padding25),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppConstant.padding10),
                  decoration: BoxDecoration(
                      border: Border.all(color: CustomThemeData.primaryColor),
                      shape: BoxShape.circle),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 55,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: CustomThemeData.backgroudColor))),
                  child: const Text(
                    'Onur Cebeci',
                    style: customFont18Bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.dynamicHeight(0.05),
          ),
          const ProfileButton(
            icon: Icons.settings,
            title: 'Ayarlar',
          ),
          const ProfileButton(
            icon: Icons.work,
            title: 'İşler',
          ),
          const ProfileButton(
            icon: Icons.message,
            title: 'Mesajlar',
          ),
          const ProfileButton(
            icon: Icons.privacy_tip,
            title: 'Gizlilik Sözleşmesi',
          ),
          SizedBox(
            height: context.dynamicHeight(0.07),
          ),
          Container(
            padding: const EdgeInsets.all(AppConstant.padding10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(AppConstant.padding20),
            ),
            width: context.dynamicWidth(0.4),
            child: const Center(
              child: Text(
                'Çıkış Yap',
                style: customFont14BoldSecondary,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppConstant.padding15),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: CustomThemeData.blackColorLight))),
          child: Padding(
            padding: const EdgeInsets.all(AppConstant.padding15),
            child: Row(
              children: [
                Icon(icon),
                const Spacer(),
                Text(title, style: customFont16Bold),
                const Spacer(flex: 15),
              ],
            ),
          ),
        )
      ],
    );
  }
}
