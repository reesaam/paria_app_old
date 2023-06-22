import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/app_general_components/app_dividers.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class AccountsPage extends CoreView<AccountsController> {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppAppBar().mainBar(controller.pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget get body => Column(children: [
        widgetContactsButton(),
        AppSpaces.h40,
        widgetTable(),
      ]);

  Widget widgetContactsButton() => AppGeneralButton(
      text: AppTexts.accountsContacts,
      leading: Icons.arrow_forward_ios_outlined,
      onTap: () {});

  Widget widgetTable() => Column(children: [
        Text(AppTexts.accountsRecordsTableTitle),
        AppDividers.generalDivider(),
        widgetRecordsTable(),
      ]);

  Widget widgetRecordsTable() => ListView.builder(
        shrinkWrap: true,
        itemCount: controller.listRecords.length,
        itemBuilder: (context, index) => Row(children: [
          Checkbox(
            value: controller.listRecords[index].cleared,
            onChanged: (checked) {},
          ),
          Expanded(
              flex: 2,
              child: Text(controller.listRecords[index].contact!.firstName ?? 'N/A')),
          Expanded(
              flex: 3,
              child: Text(controller.listRecords[index].title ?? 'N/A')),
          Expanded(
              flex: 2,
              child: Text(controller.listRecords[index].amount.toString())),
          Expanded(
              flex: 2,
              child: Text(date(controller.listRecords[index].dateTime!))),
        ]),
      );

  String date(DateTime date) => '${date.year}/${date.month}/${date.day}';
}
