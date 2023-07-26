import 'package:get/get.dart';
import 'package:paria_app/data/storage/app_local_storage.dart';
import 'package:paria_app/data/storage/app_shared_preferences.dart';

class AppStorageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppSharedPreferences>(() => AppSharedPreferences(), fenix: true);
    Get.lazyPut<AppLocalStorage>(() => AppLocalStorage(), fenix: true);
  }
}