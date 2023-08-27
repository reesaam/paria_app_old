import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/controllers/contacts_balance_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/app_extensions/extension_contact.dart';
import 'package:paria_app/data/app_extensions/extension_contacts_list.dart';
import 'package:paria_app/data/app_extensions/extension_int.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class ContactsBalancePage extends CoreView<ContactsBalanceController> {
  const ContactsBalancePage({Key? key}) : super(key: key);

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
        widgetTitle(),
        widgetTable(),
        widgetResults(),
      ]);

  Widget widgetTitle() => Column(children: [
        Padding(
            padding: AppPaddings.contactsBalanceTitle,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 5,
                      child: Text(AppTexts.contactsBalanceTitleContact,
                          style: AppTextStyles.contactsBalanceTitle)),
                  Expanded(
                      flex: 5,
                      child: Text(AppTexts.contactsBalanceTitleBalance,
                          style: AppTextStyles.contactsBalanceTitle)),
                  Expanded(
                      flex: 2,
                      child: Text(AppTexts.contactsBalanceTitleCount,
                          style: AppTextStyles.contactsBalanceTitle)),
                ])),
        AppDividers.generalDividerWithAppDefaultColor,
        AppSpaces.h10,
      ]);

  Widget widgetTable() => ListView.builder(
      shrinkWrap: true,
      itemCount: controller.listContacts.count,
      itemBuilder: (context, index) =>
          widgetTableItem(controller.listContacts.value.contactsList[index]));

  Widget widgetTableItem(AppContact contact) => InkWell(
      onTap: () => contact.calculateBalance(false).count == 0
          ? controller.showNoRecordDialog()
          : controller.showContactItemsList(contact),
      child: Padding(
          padding: AppPaddings.contactsBalanceItem,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                flex: 5,
                child: Text(contact.getContactFullName,
                    style: AppTextStyles.contactsBalanceItemsContact)),
            Expanded(
                flex: 4,
                child: Text(contact.calculateBalance(false).balance.toCurrency,
                    style: AppTextStyles.contactsBalanceItems)),
            Expanded(
                flex: 1,
                child: Text(contact.calculateBalance(false).count.toString(),
                    style: AppTextStyles.contactsBalanceItems)),
          ])));

  Widget widgetResults() => Column(children: [
        AppSpaces.h10,
        AppDividers.generalDividerWithAppDefaultColor,
        Row(children: [
          Expanded(flex: 10, child: Text('${AppTexts.total}:')),
          Expanded(
              flex: 9,
              child: Text(controller.totalBalance.value.balance.toCurrency)),
          Expanded(
              flex: 2,
              child: Text(controller.totalBalance.value.count.toString())),
        ]),
      ]);
}
