import 'package:get/get.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/app/controllers/contacts_balance_controller.dart';
import 'package:paria_app/app/controllers/contacts_controller.dart';
import 'package:paria_app/app/controllers/homepage_controller.dart';
import 'package:paria_app/app/controllers/settings_controller.dart';
import 'package:paria_app/app/controllers/splash_screen_controller.dart';
import 'package:paria_app/app/controllers/update_controller.dart';

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