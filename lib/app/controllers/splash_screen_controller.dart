import 'dart:math';

import 'package:get/get.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_logos.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class SplashScreenController extends CoreController {

  late String logoSource;
  late String appName;
  late String appVersion;

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.splashScreen;
    logoSource = AppLogos.appAnimatedLogo;
    appName = AppInfo.appName;
    appVersion = '${AppTexts.generalVersion}: ${AppInfo.appCurrentVersion}';
  }

  @override
  void onInitFunction() => goToNextPage();

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void goToNextPage() async {
    await Future.delayed(const Duration(seconds: 10));
    Get.offAndToNamed(AppRoutes.homePage);
  }
}