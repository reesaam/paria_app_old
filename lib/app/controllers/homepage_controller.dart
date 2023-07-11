import 'dart:async';

import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class HomePageController extends CoreController {

  Rx<DateTime> dt = DateTime.now().obs;
  Rx<String> time = ''.obs;
  Rx<String> date = ''.obs;

  @override
  void dataInit() {
    // AppLocalStorage.to.clearStorage();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.homepage;
    time.value = AppTextProvider.formatDate(dt.value);
    date.value = AppTextProvider.formatTimeWithSeconds(dt.value);
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
        dt.value = DateTime.now();
        time.value = AppTextProvider.formatDate(dt.value);
        date.value = AppTextProvider.formatTimeWithSeconds(dt.value);
      });
}
