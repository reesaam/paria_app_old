import 'package:get/get.dart';

import '../../admin/controllers/admin_pages_test_page_controller.dart';
import '../../admin/controllers/admin_start_page_controller.dart';
import '../../admin/controllers/admin_ui_test_page_controller.dart';

class AdminBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminStartPageController>(() => AdminStartPageController(), fenix: true);
    Get.lazyPut<AdminPagesTestPageController>(() => AdminPagesTestPageController(), fenix: true);
    Get.lazyPut<AdminUITestPageController>(() => AdminUITestPageController(), fenix: true);
  }
}