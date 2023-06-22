import 'package:get/get.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/app/controllers/homepage_controller.dart';
import 'package:paria_app/app/controllers/settings_controller.dart';
import 'package:paria_app/app/controllers/splash_screen_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    Get.lazyPut<AccountsController>(() => AccountsController(), fenix: true);
  }
}