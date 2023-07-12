import 'package:get/get.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class SettingsController extends CoreController {

  Rx<bool> darkMode = false.obs;
  Rx<String?> selectedLanguage = AppLanguages.english.name.capitalizeFirst.obs;
  Rx<String?> selectedCalendar = CalendarTypes.georgian.name.capitalizeFirst.obs;

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.settings;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

  functionDarkModeOnChange(bool value) {
    darkMode.value = value;
    appDebugPrint('DarkMode Changed to ${darkMode.value}');
    refresh();
  }

  functionClearContacts() {
    AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyContacts);
    appDebugPrint('Contacts Cleared');
  }

  functionClearRecords() {
    AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyAccountRecords);
    appDebugPrint('Records Cleared');
  }

  functionClearAllData() {
    AppLocalStorage.to.clearStorage();
    appDebugPrint('All Data Cleared');
  }
}