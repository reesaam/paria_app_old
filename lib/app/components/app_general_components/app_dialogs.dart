import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/core/admin/app_core_widgets.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppDialogs {
  static _onTapCancel() => Get.back();

  static appBottomDialogWithoutButton(String title, Widget form) async {
    List<Widget> buttons = [];
    await _appBottomDialogGeneral(title, form, buttons);
  }

  static appBottomDialogWithOk(
      String title, Widget form, Function onTapOk) async {
    List<Widget> buttons = [
      AppGeneralButton(text: AppTexts.generalOK, onTap: onTapOk)
    ];
    await _appBottomDialogGeneral(title, form, buttons);
  }

  static appBottomDialogWithCancel(String title, Widget form) async {
    List<Widget> buttons = [
      AppGeneralButton(text: AppTexts.generalCancel, onTap: _onTapCancel)
    ];
    await _appBottomDialogGeneral(title, form, buttons);
  }

  static appBottomDialogWithOkCancel(
      String title, Widget form, Function onTapOk) async {
    List<Widget> buttons = [
      AppGeneralButton(text: AppTexts.generalOK, onTap: onTapOk),
      AppGeneralButton(text: AppTexts.generalCancel, onTap: _onTapCancel),
    ];
    await _appBottomDialogGeneral(title, form, buttons);
  }

  static appAlertDialogWithOkCancel(
      String title, String text, Function onTapOk) async {
    List<Widget> buttons = [
      AppGeneralButton(text: AppTexts.generalOK, onTap: onTapOk),
      AppGeneralButton(text: AppTexts.generalCancel, onTap: _onTapCancel),
    ];
    await _appAlertDialog(title, text, buttons);
  }

  static appAlertDialogWithOk(
      String title, String text, Function onTapOk) async {
    List<Widget> buttons = [
      AppGeneralButton(text: AppTexts.generalOK, onTap: onTapOk),
    ];
    await _appAlertDialog(title, text, buttons);
  }

  static _appBottomDialogGeneral(
          String title, Widget form, List<Widget> buttons) async =>
      await showModalBottomSheet(
          context: Get.context!,
          useSafeArea: true,
          useRootNavigator: true,
          showDragHandle: true,
          isScrollControlled: true,
          shape: AppElements.defaultModalBorderShape,
          builder: (context) => SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  Padding(
                      padding: AppPaddings.generalBottomModal,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  title.isNotEmpty
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                              Text(title,
                                                  style:
                                                      AppTextStyles.modalTitle),
                                              AppDividers
                                                  .generalDividerWithAppDefaultColor,
                                              AppSpaces.h20,
                                            ])
                                      : shrinkSizedBox,
                                  form,
                                ]),
                            AppSpaces.h40,
                            _renderButtonsBottomDialog(buttons),
                          ])),
                  AppSpaces.h20,
                ]),
              ));

  static Widget _renderButtonsBottomDialog(List<Widget> buttons) {
    List<Widget> list = List.empty(growable: true);
    int length = buttons.length;
    for (int i = 0; i < length; i++) {
      list.addIf(i == 0, shrinkOneExpanded);
      list.add(Expanded(flex: (20 ~/ length), child: buttons[i]));
      list.add(shrinkOneExpanded);
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: list);
  }

  static _appAlertDialog(
          String title, String text, List<Widget> buttons) async =>
      await showDialog(
          context: Get.context!,
          useSafeArea: true,
          useRootNavigator: true,
          builder: (context) => Container(
                padding: AppPaddings.generalAlertDialog,
                child: AlertDialog(
                  backgroundColor: AppColors.appBackground,
                  shape: AppElements.defaultAlertBorderShape,
                  title: Column(children: [
                    Text(title, style: AppTextStyles.dialogAlertTitle),
                    AppDividers.generalDividerWithAppDefaultColor,
                  ]),
                  content: Text(text,
                      style: AppTextStyles.dialogAlertText,
                      softWrap: true),
                  actions: [_renderButtonsAlertDialog(buttons)],
                  actionsAlignment: MainAxisAlignment.center,
                ),
              ));

  static Widget _renderButtonsAlertDialog(List<Widget> buttons) {
    List<Widget> list = List.empty(growable: true);
    int length = buttons.length;
    for (int i = 0; i < length; i++) {
      list.addIf(i == 0, shrinkOneExpanded);
      list.add(Expanded(flex: length > 1 ? (10 ~/ length) : 1, child: buttons[i]));
      list.add(shrinkOneExpanded);
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: list);
  }
}
