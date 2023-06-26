import 'package:get/get.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class AppStorageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppLocalStorage>(() => AppLocalStorage(), fenix: true);
  }
}