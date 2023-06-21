import 'package:get/get.dart';
import 'package:paria_app/app/controllers/homepage_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
  }
}