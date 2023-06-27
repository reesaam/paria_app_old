import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppDialogs {
  static Widget _shrinkOneExpanded() =>
      const Expanded(flex: 1, child: SizedBox.shrink());

  static _onTapCancel() => Get.back();

  static mainAppDialogWithoutButton(String title, Widget form) =>
      showModalBottomSheet(
          context: Get.context!,
          useSafeArea: true,
          showDragHandle: true,
          isScrollControlled: true,
          shape: AppElements.defaultModalBorderShape,
          builder: (context) => Padding(
              padding: AppPaddings.generalModal,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyles.modalTitle),
                    AppSpaces.h40,
                    Expanded(child: ListView(children: [form])),
                  ])));

  static mainAppDialogWithOk(String title, Widget form, onTapOk) =>
      showModalBottomSheet(
          context: Get.context!,
          useSafeArea: true,
          showDragHandle: true,
          isScrollControlled: true,
          shape: AppElements.defaultModalBorderShape,
          builder: (context) => Padding(
              padding: AppPaddings.generalModal,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      Text(title, style: AppTextStyles.modalTitle),
                      AppSpaces.h40,
                      form,
                    ]),
                    AppGeneralButton(text: AppTexts.generalOK, onTap: onTapOk),
                  ])));

  static mainAppDialogWithOkCancel(
          String title, Widget form, Function onTapOk) =>
      showModalBottomSheet(
          context: Get.context!,
          useSafeArea: true,
          useRootNavigator: true,
          showDragHandle: true,
          isScrollControlled: true,
          shape: AppElements.defaultModalBorderShape,
          builder: (context) => Padding(
              padding: AppPaddings.generalModal,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: AppTextStyles.modalTitle),
                          AppSpaces.h40,
                          form,
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _shrinkOneExpanded(),
                          Expanded(
                              flex: 10,
                              child: AppGeneralButton(
                                  text: AppTexts.generalOK, onTap: onTapOk)),
                          _shrinkOneExpanded(),
                          Expanded(
                              flex: 10,
                              child: AppGeneralButton(
                                  text: AppTexts.generalCancel,
                                  onTap: _onTapCancel)),
                          _shrinkOneExpanded(),
                        ]),
                  ])));
}
