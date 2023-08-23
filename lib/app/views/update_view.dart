import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_panel.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/update_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class UpdatePage extends CoreView<UpdateController> {
  const UpdatePage({Key? key}) : super(key: key);

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
  Widget get body =>
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        widgetVersions(),
        AppSpaces.h40,
        widgetButtons(),
      ]);

  Widget widgetVersions() => Obx(() => AppPanel(
          innerChild: Column(children: [
        widgetVersion(AppTexts.updateCurrentVersion, AppInfo.appCurrentVersion),
        AppSpaces.h10,
        widgetVersion(
            AppTexts.updateAvailableVersion,
            controller.availableVersion.value == AppInfo.appCurrentVersion
                ? AppTexts.generalNotAvailable
                : controller.availableVersion.value),
      ])));

  Widget widgetVersion(String title, String version) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), Text(version)]);

  Widget widgetButtons() => Column(children: [
        AppGeneralButton(text: AppTexts.updateCheckUpdate, onTap: controller.checkUpdate),
        AppGeneralButton(text: AppTexts.updateDownloadUpdate, onTap: controller.downloadUpdate),
      ]);
}
