import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_text_field.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AppDialogs {
  static addNewAccountsRecordDialog() {
    TextEditingController controllerContact = TextEditingController();
    TextEditingController controllerTitle = TextEditingController();
    TextEditingController controllerAmount = TextEditingController();
    TextEditingController controllerDateTime = TextEditingController();

    showModalBottomSheet(
        context: Get.context!,
        useSafeArea: true,
        showDragHandle: true,
        isScrollControlled: true,
        shape: AppElements.defaultModalBorderShape,
        builder: (context) => Padding(
              padding: AppPaddings.accountsAddNewRecordModal,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.accountsAddNewRecordTitle,
                      style: AppTextStyles.accountsAddNewRecordTitle,
                    ),
                    AppSpaces.h20,
                    AppTextField(
                        controller: controllerContact,
                        label: AppTexts.accountsAddNewRecordFieldContactTitle,
                        hint: AppTexts.accountsAddNewRecordFieldContactHint,
                        icon: Icons.person),
                    AppSpaces.h10,
                    AppTextField(
                        controller: controllerContact,
                        label: AppTexts.accountsAddNewRecordFieldTitleTitle,
                        hint: AppTexts.accountsAddNewRecordFieldTitleHint,
                        icon: Icons.text_snippet_outlined),
                    AppSpaces.h10,
                    AppTextField(
                        controller: controllerContact,
                        label: AppTexts.accountsAddNewRecordFieldAmountTitle,
                        hint: AppTexts.accountsAddNewRecordFieldAmountHint,
                        icon: Icons.monetization_on_outlined),
                    AppSpaces.h10,
                    AppTextField(
                        controller: controllerContact,
                        label: AppTexts.accountsAddNewRecordFieldDateTimeTitle,
                        hint: AppTexts.accountsAddNewRecordFieldDateTimeHint,
                        icon: Icons.calendar_today_outlined),
                  ]),
            ));
  }
}
