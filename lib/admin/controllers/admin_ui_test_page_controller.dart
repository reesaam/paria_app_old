import 'package:flutter/cupertino.dart';

import '../../core/elements/core_controller.dart';
import '../../data/resources/app_page_details.dart';

class AdminUITestPageController extends CoreController {

  TextEditingController controllerTextField1 = TextEditingController();

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.adminUITestPage;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

}