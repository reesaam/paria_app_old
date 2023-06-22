import 'package:get/get.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class HomePageController extends CoreController {

  late RxString time;
  late RxString date;

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.homepage;
    DateTime dt = DateTime.now();
    time = '${dt.year}/${dt.month}/${dt.day}'.obs;
    date = '${dt.hour}:${dt.minute}:${dt.second}'.obs;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}

}