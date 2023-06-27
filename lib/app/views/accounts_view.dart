import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/components/app_general_components/app_floating_buttons.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_records.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
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

  Widget summary() => Container(
      // color: AppColors.buttonNormal,
      padding: AppPaddings.accountsSummaryCard,
      decoration: BoxDecoration(
          color: AppColors.cardDefaultColor,
          borderRadius: AppElements.defaultBorderWithRadius),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //Titles
        Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
                AppTexts.accountSummaryItems.length,
                (index) => Text(AppTexts.accountSummaryItems[index],
                    style: AppTextStyles.cardText))),
        //Values
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(controller.calculateSum().toString(),
              style: AppTextStyles.cardText),
          Text(controller.listRecords.length.toString(),
              style: AppTextStyles.cardText),
          Text(controller.listRecords.length.toString(),
              style: AppTextStyles.cardText),
        ]),
      ]));

  Widget widgetTable() => Column(children: [
        Text(AppTexts.accountsRecordsTableTitle),
        AppDividers.generalDivider(),
        widgetRecordsTable(),
      ]);

  // Widget widgetRecordsTable() => Obx(() => ListView(
  //     shrinkWrap: true,
  //     physics: const BouncingScrollPhysics(),
  //     children: List.generate(controller.listRecords.length,
  //         (index) => widgetRecordsTableItem(controller.listRecords[index]))));

  // Widget widgetRecordsTable() => ListView.builder(
  //     shrinkWrap: true,
  //     physics: const BouncingScrollPhysics(),
  //     itemCount: controller.listRecords.length,
  //     itemBuilder: (context, index) => widgetRecordsTableItem(controller.listRecords[index]));

  Widget widgetRecordsTable() => Obx(() => Column(
      children: List.generate(controller.listRecords.length,
          (index) => widgetRecordsTableItem(controller.listRecords[index]))));

  Widget widgetRecordsTableItem(AccountRecord record) => Row(children: [
        Checkbox(value: record.cleared, onChanged: (checked) {}),
        Expanded(
            flex: 2,
            child: Text(record.contact!.firstName ??
                AppTexts.generalNotAvailableInitials)),
        Expanded(
            flex: 3,
            child: Text(record.title ?? AppTexts.generalNotAvailableInitials)),
        Expanded(flex: 2, child: Text(record.amount.toString())),
        Expanded(flex: 2, child: Text(controller.date(record.dateTime!))),
      ]);
}
