import 'dart:async';

import 'package:get/get.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';
import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_balance/account_balance.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';

class HomePageController extends CoreController {

  Rx<DateTime> mainDateTime = DateTime.now().obs;
  Rx<String> mainTime = ''.obs;
  Rx<String> mainDate = ''.obs;

  Rx<int> summaryContactsCount = 0.obs;
  Rx<int> summaryRecordsCount = 0.obs;
  Rx<AppAccountBalance> summaryBalanceCount = const AppAccountBalance().obs;

  Rx<AppAccountRecordsList> listRecords = AppAccountRecordsList().obs;
  Rx<AppContactsList> listContacts = AppContactsList().obs;

  @override
  void dataInit() {
    // clearAppData();
    listContacts.value = AppContactsList().loadFromStorage;
    listRecords.value = AppAccountRecordsList().loadFromStorage;
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.homepage;
    mainTime.value = mainDateTime.value.toDateFormat;
    mainDate.value = mainDateTime.value.toTimeFormatWithSeconds;

    summaryContactsCount.value = listContacts.count;
    summaryRecordsCount.value = listRecords.count;
    summaryBalanceCount.value = listRecords.calculateSum(false);
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
