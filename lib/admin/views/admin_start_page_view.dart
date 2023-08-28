import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:paria_app/admin/controllers/admin_start_page_controller.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

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
