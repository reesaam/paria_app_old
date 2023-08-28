import 'package:flutter/cupertino.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AdminPagesTestPageController extends CoreController {

  TextEditingController controllerTextField1 = TextEditingController();

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.adminPagesTestPage;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

}