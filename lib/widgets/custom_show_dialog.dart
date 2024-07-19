//
import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/utils/custom_theme_data.dart';
import 'package:delivery_app/utils/extensions.dart';
import 'package:delivery_app/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomShowDialog {
  CustomShowDialog.showCodeMessage(BuildContext context,
      {required String title,
      required String subtitle,
      required double height,
      required double width,
      IconData iconData = Icons.done}) {
    Size size = MediaQuery.of(context).size;

    final formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Form(
          key: formKey,
          child: Center(
            child: SizedBox(
              width: width,
              height: height,
              child: Card(
                child: Padding(
                  padding: customPaddingLarge,
                  child: Column(
                    children: [
                      context.sizedBoxHeightExtraSmall,
                      Text(
                        title,
                        style: customFont18Bold.copyWith(
                          color: CustomThemeData.primaryColor,
                        ),
                      ),
                      context.sizedBoxHeightUltraSmall,
                      Text(
                        subtitle,
                        style: customFont13SemiBold.copyWith(
                          color: context.disabledColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      TextFormField(
                        style: customFont18,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.length == 6) {
                            return null;
                          } else {
                            return AppConstant.wrongCode;
                          }
                        },
                        enabled: true,
                        maxLines: 1,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          label: Text(AppConstant.enterTheCode),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: size.width / 3,
                        child: MaterialButton(
                          child: const Text(AppConstant.iAcceptV2),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.router.popForced();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width / 3,
                        child: MaterialButton(
                          onPressed: () => context.router.popForced(),
                          child: const Text(
                            AppConstant.cancel,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                      context.sizedBoxHeightExtraSmall,
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  CustomShowDialog.showMessage(BuildContext context,
      {required String title,
      required String subtitle,
      required double height,
      required double width,
      required void Function()? onTap,
      IconData iconData = Icons.done}) {
    Size size = MediaQuery.of(context).size;

    final _formKey = GlobalKey<FormState>();
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Form(
          key: _formKey,
          child: Center(
            child: SizedBox(
              width: width,
              height: height,
              child: Card(
                child: Padding(
                  padding: customPaddingLarge,
                  child: Column(
                    children: [
                      const Spacer(),
                      context.sizedBoxHeightExtraSmall,
                      Text(
                        title,
                        style: customFont18Bold.copyWith(
                          color: CustomThemeData.primaryColor,
                        ),
                      ),
                      context.sizedBoxHeightUltraSmall,
                      Text(
                        subtitle,
                        style: customFont13SemiBold.copyWith(
                          color: context.disabledColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: size.width / 3,
                        child: MaterialButton(
                          onPressed: onTap,
                          child: const Text(AppConstant.iAccept),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 3,
                        child: MaterialButton(
                          onPressed: () => context.router.popForced(),
                          child: const Text(
                            AppConstant.cancel,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                      context.sizedBoxHeightExtraSmall,
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
