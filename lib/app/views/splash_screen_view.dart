import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/elements/core_view.dart';
import '../../data/resources/app_paddings.dart';
import '../../data/resources/app_progress_indicator.dart';
import '../../data/resources/app_text_styles.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenPage extends CoreView<SplashScreenController> {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => null;

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => null;

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Container(
        alignment: Alignment.center,
        width: Get.width,
        height: Get.height - 100,
        child: Stack(children: [
          widgetLogo(),
          widgetAppName(),
          widgetLoadingIndicator(),
          widgetVersion(),
        ]),
      );

  Widget widgetLogo() => Container(
      alignment: Alignment.topCenter,
      child: Image.asset(controller.logoSource));

  Widget widgetAppName() => Container(
      alignment: Alignment.center,
      child: Text(
        controller.appName,
        style: AppTextStyles.splashScreenAppName,
      ));

  Widget widgetLoadingIndicator() => Container(
      alignment: Alignment.center,
      padding: AppPaddings.splashScreenProgressIndicator,
      child: AppProgressIndicator.circularDefault());

  Widget widgetVersion() => Container(
      alignment: Alignment.bottomCenter, child: Text(controller.appVersion));
}
