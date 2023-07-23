import 'dart:async';

import 'package:get/get.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class HomePageController extends CoreController {

  Rx<DateTime> mainDateTime = DateTime.now().obs;
  Rx<String> mainTime = ''.obs;
  Rx<String> mainDate = ''.obs;

  @override
  void dataInit() {
    // clearAppData();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.homepage;
    mainTime.value = mainDateTime.value.toDateFormat;
    mainDate.value = mainDateTime.value.toTimeFormatWithSeconds;
  }

  @override
  void onInitFunction() {
    timeUpdate();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  void timeUpdate() => Timer.periodic(const Duration(seconds: 1), (timer) {
        mainDateTime.value = DateTime.now();
        mainTime.value = mainDateTime.value.toDateFormat;
        mainDate.value = mainDateTime.value.toTimeFormatWithSeconds;
      });
}
