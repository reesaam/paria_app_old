import 'package:flutter/cupertino.dart';
import 'package:paria_app/admin/controllers/admin_test_page_controller.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/resources/app_spaces.dart';

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
              hint: 'TextField 1 Hint'),
        ]),
      );
}
