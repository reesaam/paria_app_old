import 'package:flutter/cupertino.dart';

import '../../core/elements/core_controller.dart';
import '../../data/resources/app_page_details.dart';

class AdminStartPageController extends CoreController {

  TextEditingController controllerTextField1 = TextEditingController();

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.adminStartPage;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

}