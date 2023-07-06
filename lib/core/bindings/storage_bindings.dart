import 'package:get/get.dart';
import 'package:paria_app/data/storage/local_storage.dart';
import 'package:paria_app/data/storage/shared_preferences.dart';

class AppStorageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppSharedPreferences>(() => AppSharedPreferences(), fenix: true);
    Get.lazyPut<AppLocalStorage>(() => AppLocalStorage(), fenix: true);
  }
}