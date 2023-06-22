import 'dart:math';

import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_logos.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class SplashScreenController extends CoreController {

  late String logoSource;
  late String appName;
  late String appVersion;

  @override
  void onInit() {
    dataInit();
    pageInit();
    onInitFunction();
    super.onInit();
  }

  @override
  void dataInit() {
    pageDetail = AppPageDetails.splashScreen;
    logoSource = AppLogos.appAnimatedLogo;
    appName = AppInfo.appName;
    appVersion = '${AppTexts.version}: ${AppInfo.appCurrentVersion}';
  }

  @override
  void pageInit() {}

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

}