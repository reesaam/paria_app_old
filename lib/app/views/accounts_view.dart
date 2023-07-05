import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/components/app_general_components/app_floating_buttons.dart';
import 'package:paria_app/app/components/app_general_components/app_text_provider.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/app_extensions/app_extensions_account_records.dart';
import 'package:paria_app/data/app_extensions/app_general_extensions.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AccountsPage extends CoreView<AccountsController> {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppAppBar().mainBar(controller.pageDetail);

  @override
  Widget? get topBar => widgetTopBar();

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => AppFloatingActionButtons(
      icon: Icons.add, onTap: controller.addRecordFunction);

  @override
  Widget get body => widgetTable();

  Widget widgetTopBar() => Padding(
        padding: AppPaddings.pages,
        child: Column(children: [
          widgetContactsButton(),
          AppSpaces.h10,
          summary(),
          AppSpaces.h20,
        ]),
      );

  Widget widgetContactsButton() => AppGeneralButton(
      text: AppTexts.accountsContactsBalance,
      leading: Icons.arrow_forward_ios_outlined,
      onTap: () {});

  Widget summary() => Card(
        child: Container(
            // color: AppColors.buttonNormal,
            padding: AppPaddings.accountsSummaryCard,
            decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: AppElements.defaultBorderWithRadius),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Titles
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(
                          AppTexts.accountSummaryItems.length,
                          (index) => Text(AppTexts.accountSummaryItems[index],
                              style: AppTextStyles.cardText))),
                  //Values
                  Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.itemsSum.value,
                                style: AppTextStyles.cardText),
                            Text(controller.itemsCount.value.toString(),
                                style: AppTextStyles.cardText),
                            Text(controller.itemsCountContacts.toString(),
                                style: AppTextStyles.cardText),
                          ])),
                ])),
      );

  Widget widgetTable() => Column(children: [
        Stack(children: [
          Align(
              alignment: Alignment.center,
              child: Text(AppTexts.accountsRecordsTableTitle,
                  style: AppTextStyles.accountsRecordsTableTitle)),
          Align(
              alignment: Alignment.centerRight,
              child: recordsTableThreeDotsMenu()),
        ]),
        AppDividers.generalDivider(),
        Obx(() => controller.listRecords.isEmpty()
            ? widgetNoRecord()
            : widgetRecordsTable()),
      ]);

  Widget recordsTableThreeDotsMenu() => SizedBox(
      height: 20,
      child: PopupMenuButton(
          padding: AppPaddings.zero,
          shape: AppElements.defaultBorderShape,
          icon: AppIcons.threeDots.withAppDefaultColor(),
          itemBuilder: (context) => recordsTableThreeDotsMenuList()));

  List<PopupMenuItem> recordsTableThreeDotsMenuList() => List.from([
        PopupMenuItem(
            onTap: controller.clearRecordsList,
            child: Text(AppTexts.accountsTablePopupMenuClearRecords))
      ]);

  Widget widgetRecordsTable() => Obx(() => Column(
      children: List.generate(
          controller.listRecords.count(),
          (index) => widgetRecordsTableItem(
              controller.listRecords.value.recordsList[index]))));

  Widget widgetRecordsTableItem(AccountRecord record) => Row(children: [
        Expanded(
            flex: 1,
            child: Checkbox(
                value: record.cleared,
                onChanged: (checked) =>
                    controller.clearRecord(record, checked))),
        Expanded(
            flex: 2,
            child: Text(record.contact!.firstName ??
                AppTexts.generalNotAvailableInitials)),
        Expanded(
            flex: 3,
            child: Text(record.title ?? AppTexts.generalNotAvailableInitials)),
        Expanded(flex: 2, child: Text(record.amount.toString())),
        Expanded(
            flex: 3, child: Text(AppTextProvider.dateText(record.dateTime!))),
      ]);

  Widget widgetNoRecord() => Container(
        padding: AppPaddings.accountsNoRecordText,
        child: Text(AppTexts.accountsNoRecords,
            style: AppTextStyles.accountNoRecord),
      );
}
