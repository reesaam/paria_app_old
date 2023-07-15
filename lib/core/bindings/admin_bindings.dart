import 'package:get/get.dart';
import 'package:paria_app/admin/controllers/admin_test_page_controller.dart';

class AdminBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminUITestPageController>(() => AdminUITestPageController(), fenix: true);
  }
}