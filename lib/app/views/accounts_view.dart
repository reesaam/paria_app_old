import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/components/app_general_components/app_floating_buttons.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu_item.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_icon_button.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/core/admin/app_core_widgets.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/app_extensions/extension_date_time.dart';
import 'package:paria_app/data/app_extensions/extension_account_records_list.dart';
import 'package:paria_app/data/app_extensions/extension_string.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_sizes.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AccountsPage extends CoreView<AccountsController> {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppAppBar(
      pageDetail: controller.pageDetail, barAction: widgetAppBarAction());

  @override
  Widget? get topBar => widgetTopBar();

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => AppFloatingActionButtons(
      icon: AppIcons.add.icon!, onPressed: controller.addRecordFunction);

  @override
  Widget get body => widgetTable();

  Widget widgetTopBar() =>
      Padding(padding: AppPaddings.accountsTopBar, child: summary());

  Widget widgetAppBarAction() => Padding(
        padding: AppPaddings.appBarActions,
        child: AppIconButton(
            icon: AppIcons.list.icon!,
            onPressed: () => Get.toNamed(AppRoutes.contactsBalance),
            brightIcon: true),
      );

  Widget summary() => Card(
      child: Padding(
          padding: AppPaddings.accountsSummaryCard,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //Titles
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                    AppTexts.accountSummaryItems.length,
                    (index) => Text(AppTexts.accountSummaryItems[index],
                        style: AppTextStyles.cardText))),
            //Values
            Obx(() =>
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(controller.itemsBalance.value.toCurrency,
                      style: AppTextStyles.cardText),
                  Text(controller.itemsCount.value.toString(),
                      style: AppTextStyles.cardText),
                  Text(controller.itemsCountContacts.toString(),
                      style: AppTextStyles.cardText),
                ])),
          ])));

  //Filter
  Widget widgetFilter() => Obx(() => Row(children: [
        controller.hasFilter.value
            ? AppIconButton(
                icon: AppIcons.removeFilter.icon!,
                onPressed: controller.clearAllFilters)
            : shrinkSizedBox,
        AppIconButton(
            icon: controller.filterIcon.value.icon!,
            onPressed: controller.addFilterModal),
      ]));

  //ThreeDots Button
  Widget widgetRecordsTableThreeDotsMenu() => Obx(() => SizedBox(
      height: AppSizes.popUpMenuButton,
      child: AppPopupMenu(listItems: recordsTableThreeDotsMenuList())));

  List<AppPopupMenuItem> recordsTableThreeDotsMenuList() =>
      List<AppPopupMenuItem>.from([
        AppPopupMenuItem(
            text: AppTexts.accountsTablePopupMenuRemoveAllRecords,
            onTapFunction: () => controller.clearRecordsList()),
        AppPopupMenuItem(
            text: controller.showClearedText.value,
            onTapFunction: () => controller.changeShowClearedStatus()),
        AppPopupMenuItem(
            text: controller.showPositiveText.value,
            onTapFunction: () => controller.changeShowPositive()),
        AppPopupMenuItem(
            text: controller.showNegativeText.value,
            onTapFunction: () => controller.changeShowNegative()),
      ]);

  //Whole Table
  Widget widgetTable() => Column(children: [
        Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(AppTexts.accountsRecordsTableTitle,
                  style: AppTextStyles.accountsRecordsTableTitle)),
          Align(
              alignment: Alignment.centerRight,
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                widgetFilter(),
                widgetRecordsTableThreeDotsMenu(),
              ])),
        ]),
        AppDividers.generalDivider,
        Obx(() => controller.listRecords.isEmpty
            ? widgetNoRecord()
            : widgetRecordsTable()),
      ]);

  //Table
  Widget widgetRecordsTable() => Obx(() => Column(
      children: List.generate(
          controller.listRecords.count,
          (index) => controller.checkFilter(controller.filter.value,
                  controller.listRecords.membersList[index])
              ? shrinkSizedBox
              : widgetRecordsTableItem(
                  controller.listRecords.membersList[index]))));

  //Table
  // Widget widgetRecordsTable() => Obx(() => ListView.builder(
  //     shrinkWrap: true,
  //     itemCount: controller.listRecords.count(),
  //     itemBuilder: (context, index) =>
  //         widgetRecordsTableItem(controller.listRecords.membersList()[index])));

  Widget widgetRecordsTableItem(AppAccountRecord record) =>
      !controller.showCleared.value && record.cleared == true
          ? shrinkSizedBox
          : InkWell(
              onLongPress: () => controller.showItemMenu(record),
              child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: AppElements.cardTransparentOutlineBorderWithNoRadius,
                  child: Row(children: [
                    Expanded(
                        flex: controller.listTableItemSections[0],
                        child: Checkbox(
                            value: record.cleared,
                            onChanged: (checked) => controller
                                .changeRecordClearanceStatus(record, checked))),
                    Expanded(
                        flex: controller.listTableItemSections[1],
                        child: Text(
                            record.contact!.firstName ??
                                AppTexts.generalNotAvailableInitials,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textStyleItemName)),
                    Expanded(
                        flex: controller.listTableItemSections[2],
                        child: Text(
                            record.title ??
                                AppTexts.generalNotAvailableInitials,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textStyleItemDescription)),
                    shrinkOneExpanded,
                    Expanded(
                        flex: controller.listTableItemSections[3],
                        child: Text(record.amount.toCurrency,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: checkBalance(record)
                                ? textStyleItemAmountPositive
                                : textStyleItemAmountNegative)),
                    shrinkOneExpanded,
                    Expanded(
                        flex: controller.listTableItemSections[4],
                        child: Text(record.dateTime!.toDateFormat,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textStyleItemDate)),
                  ])),
            );

  //Table No Record
  Widget widgetNoRecord() => Container(
      padding: AppPaddings.accountsNoRecordText,
      child: Text(AppTexts.accountsNoRecords,
          style: AppTextStyles.accountNoRecord));

  //Negative and Positive
  bool checkBalance(AppAccountRecord record) =>
      record.amount! < 0 ? false : true;
  TextStyle get textStyleItemPositive =>
      TextStyle(color: AppColors.accountsRecordItemPositive);
  TextStyle get textStyleItemNegative =>
      TextStyle(color: AppColors.accountsRecordItemNegative);

  //Elements TextStyle
  TextStyle get textStyleItemName => TextStyle(color: AppColors.textNormalGrey);
  TextStyle get textStyleItemDescription =>
      TextStyle(color: AppColors.textNormalGrey);
  TextStyle get textStyleItemAmountPositive => textStyleItemPositive;
  TextStyle get textStyleItemAmountNegative => textStyleItemNegative;
  TextStyle get textStyleItemDate => TextStyle(color: AppColors.textNormalGrey);
}
