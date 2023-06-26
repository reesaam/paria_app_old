import 'package:get/get.dart';
import 'package:paria_app/core/bindings/app_bindings.dart';
import 'package:paria_app/core/bindings/storage_bindings.dart';

class CoreBindings implements Bindings {
  @override
  void dependencies() {
    AppStorageBindings().dependencies();
    AppBindings().dependencies();
  }
}