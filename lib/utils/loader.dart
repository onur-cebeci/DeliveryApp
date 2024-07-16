import 'package:flutter/material.dart';

import 'custom_theme_data.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        color: CustomThemeData.blueColorDark,
      )),
    );
  }
}
