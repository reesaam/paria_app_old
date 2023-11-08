import 'package:get/get.dart';
import 'package:paria_app/core/bindings/storage_bindings.dart';

import 'admin_bindings.dart';
import 'app_bindings.dart';

class CoreBindings implements Bindings {
  @override
  void dependencies() {
    AppStorageBindings().dependencies();
    AppBindings().dependencies();
    AdminBindings().dependencies();
  }
}