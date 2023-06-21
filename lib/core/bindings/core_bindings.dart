import 'package:get/get.dart';
import 'package:paria_app/core/bindings/app_bindings.dart';

class CoreBindings implements Bindings {
  @override
  void dependencies() {
    AppBindings().dependencies();
  }
}