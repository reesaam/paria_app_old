import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../app/components/app_bar.dart';
import '../../app/components/buttons/app_general_button.dart';
import '../../core/elements/core_view.dart';
import '../../data/resources/app_paddings.dart';
import '../../data/resources/app_page_details.dart';
import '../controllers/admin_start_page_controller.dart';

class AdminStartPage extends CoreView<AdminStartPageController> {
  const AdminStartPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => null;

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Column(children: [widgetButtons()]);

  Widget widgetButtons() => Padding(
      padding: AppPaddings.homepageButtons,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: listButtons()));

  List<Widget> listButtons() => [
        AppGeneralButton(
            text: 'Admin Pages Test Page',
            onTap: () =>
                Get.toNamed(AppPageDetails.adminPagesTestPage.pageRoute!)),
        AppGeneralButton(
            text: 'Admin UI Test Page',
            onTap: () =>
                Get.toNamed(AppPageDetails.adminUITestPage.pageRoute!)),
      ];
}
