import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/utils/constant.dart';
import 'package:delivery_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ActiveJobsMessageScreen extends ConsumerWidget {
  const ActiveJobsMessageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: CustomAppBar(pageName: AppConstant.costumerMessageScreenTitle),
    );
  }
}
