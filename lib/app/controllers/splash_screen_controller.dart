import 'dart:math';

import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_permissions.dart';
import 'package:paria_app/app/components/update_components/app_update.dart';
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
  Rx<bool> checkPermissionSwitch = false.obs;

  late String logoSource;
  late String appName;
  late String appVersion;
  bool updateAvailable = false;

  @override
  void dataInit() async {
    // clearAppData();
    loadAppData();
    await checkUpdate();
    await checkPermissions();
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

    checkPermissionSwitch
        .listen((data) {})
        .onData((data) => data ? checkChecks() : null);
  }

  void checkChecks() =>
      allChecked.value = checkUpdateSwitch.value && checkPermissionSwitch.value;

  void goToNextPage() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAndToNamed(AppRoutes.homePage);
    updateAvailable ? Get.toNamed(AppRoutes.update) : null;
  }

  changeUpdateSwitch() => {updateAvailable = !updateAvailable, Get.back()};

  Future<void> checkUpdate() async {
    String version = await AppCheckUpdate().checkVersion();
    appDebugPrint('Current Version: ${AppInfo.appCurrentVersion}');
    appDebugPrint('Host Version: $version');
    version == AppInfo.appCurrentVersion ? null : await dialogNewVersion();
    checkUpdateSwitch.value = true;
  }

  Future<void> dialogNewVersion() async {
    appDebugPrint('Alert Dialog - New Version raising...');
    await AppDialogs.appAlertDialogWithOkCancel(AppTexts.updateNewVersion,
        AppTexts.updateApprove, changeUpdateSwitch, false);
    appDebugPrint('Alert Dialog - New Version closed');
  }

  Future<void> checkPermissions() async {
    ///TODO: Need some Attention
    await AppPermissions().checkAllPermissions();
    checkPermissionSwitch.value = true;
  }
}
