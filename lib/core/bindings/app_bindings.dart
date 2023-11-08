import 'package:get/get.dart';

import '../../app/controllers/accounts_controller.dart';
import '../../app/controllers/contacts_balance_controller.dart';
import '../../app/controllers/contacts_controller.dart';
import '../../app/controllers/homepage_controller.dart';
import '../../app/controllers/settings_controller.dart';
import '../../app/controllers/splash_screen_controller.dart';
import '../../app/controllers/update_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    Get.lazyPut<ContactsController>(() => ContactsController(), fenix: true);
    Get.lazyPut<ContactsBalanceController>(() => ContactsBalanceController(), fenix: true);
    Get.lazyPut<AccountsController>(() => AccountsController(), fenix: true);
    Get.lazyPut<UpdateController>(() => UpdateController(), fenix: true);
  }
}