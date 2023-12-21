import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../app/components/main_components/app_bar.dart';
import '../../app/components/general_components/app_text_field.dart';
import '../../app/components/buttons/app_general_button.dart';
import '../../core/elements/core_view.dart';
import '../../data/resources/app_icons.dart';
import '../../data/resources/app_spaces.dart';
import '../controllers/admin_ui_test_page_controller.dart';

class AdminUITestPage extends CoreView<AdminUITestPageController> {
  const AdminUITestPage({Key? key}) : super(key: key);

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
  Widget get body => Column(children: [
        widgetButtons(),
        AppSpaces.h20,
        widgetTextFields(),
        AppSpaces.h20,
        widgetBottomSheets(),
      ]);

  Widget widgetButtons() => Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Column(children: [
          AppGeneralButton(text: 'General Button', onTap: () {}),
        ]),
      );

  Widget widgetTextFields() => Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Column(children: [
          AppTextField(
            controller: controller.controllerTextField1,
            label: 'Text Field 1 Label',
            hint: 'TextField 1 Hint',
            icon: AppIcons.contacts.icon,
          ),
        ]),
      );

  Widget widgetBottomSheets() => Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: Column(children: [
          AppGeneralButton(
              text: 'Get Bottom Sheet',
              onTap: () => Get.bottomSheet(const Form(
                      child: Column(
                    children: [Text('Text 1'), Text('Text 2')],
                  )))),
        ]),
      );
}
