import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../app/components/main_components/app_bar.dart';
import '../../app/components/buttons/app_general_button.dart';
import '../../core/elements/core_view.dart';
import '../../data/resources/app_paddings.dart';
import '../../data/resources/app_page_details.dart';
import '../controllers/admin_pages_test_page_controller.dart';

class AdminPagesTestPage extends CoreView<AdminPagesTestPageController> {
  const AdminPagesTestPage({Key? key}) : super(key: key);

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
        const Text('Pages:'),
        AppGeneralButton(
            text: 'Splash Screen',
            onTap: () => Get.toNamed(AppPageDetails.splashScreen.pageRoute!)),
        AppGeneralButton(
            text: 'Accounts',
            onTap: () => Get.toNamed(AppPageDetails.accounts.pageRoute!)),
        AppGeneralButton(
            text: 'Contacts',
            onTap: () => Get.toNamed(AppPageDetails.contacts.pageRoute!)),
        AppGeneralButton(
            text: 'Contacts Balance',
            onTap: () =>
                Get.toNamed(AppPageDetails.contactsBalance.pageRoute!)),
        AppGeneralButton(
            text: 'Settings',
            onTap: () => Get.toNamed(AppPageDetails.settings.pageRoute!)),
        AppGeneralButton(
            text: 'Update',
            onTap: () => Get.toNamed(AppPageDetails.update.pageRoute!)),
      ];
}
