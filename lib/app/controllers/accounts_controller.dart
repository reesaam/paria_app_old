import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AccountsController extends CoreController {

  @override
  void onInit() {
    dataInit();
    pageInit();
    onInitFunction();
    super.onInit();
  }

  @override
  void dataInit() {
    pageDetail = AppPageDetails.accounts;
  }

  @override
  void pageInit() {}

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

}