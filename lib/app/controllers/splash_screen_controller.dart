import 'dart:math';

import 'package:get/get.dart';
import 'package:paria_app/app/components/update_components/in_app_update.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_logos.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class SplashScreenController extends CoreController {
  Rx<bool> allChecked = false.obs;
  Rx<bool> checkUpdateSwitch = false.obs;

  late String logoSource;
  late String appName;
  late String appVersion;

  @override
  void dataInit() async {
    // clearAppData();
    loadAppData();
    await checkUpdate();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.splashScreen;
    logoSource = AppLogos.appAnimatedLogo;
    appName = AppInfo.appName;
    appVersion = '${AppTexts.generalVersion}: ${AppInfo.appCurrentVersion}';
  }

  @override
  void onInitFunction() => checksListeners();

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void checksListeners() {
    allChecked
        .listen((data) {})
        .onData((data) => data == true ? goToNextPage() : null);

    checkUpdateSwitch
        .listen((data) {})
        .onData((data) => data ? checkChecks() : null);
  }

  void checkChecks() => allChecked.value = checkUpdateSwitch.value;

  void goToNextPage() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAndToNamed(AppRoutes.homePage);
  }

  Future<void> checkUpdate() async {
    String version = await AppUpdate().checkVersion();
    appDebugPrint('Current Version: ${AppInfo.appCurrentVersion}');
    appDebugPrint('Host Version: $version');
    version == AppInfo.appCurrentVersion
        ? await AppUpdate().dialogNewVersion()
        : null;
    checkUpdateSwitch.value = true;
  }
}
