import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/components/app_bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/homepage_controller.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/admin/app_core_widgets.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/app_extensions/extension_icon.dart';
import 'package:paria_app/data/app_extensions/extension_string.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_sizes.dart';

class HomePage extends CoreView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get topBar => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [widgetDateTime(), widgetSummery()]);

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [widgetButtons()]);

  Widget widgetDateTime() => Padding(
        padding: AppPaddings.pages,
        child: Card(
            child: Stack(children: [
          Padding(
              padding: AppPaddings.homepageDateTimeCard,
              child: Column(children: [
                Text(AppTexts.homepageDateTimeTitle,
                    style: AppTextStyles.cardTitle),
                AppSpaces.h20,
                Obx(() => widgetDateTimeItem()),
              ])),

          ///TODO: Implement DateTime Setting Page
          InkWell(
              onTap: () {},
              child: Container(
                  alignment: Alignment.topRight,
                  padding: AppPaddings.homepageDateTimeCardSettingIcon,
                  child: AppIcons.settings.withAppDefaultColor
                      .withSize(AppSizes.homepageClickSettingIcon))),
        ])),
      );

  Widget widgetDateTimeItem() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(controller.mainTime.value),
            Text(controller.mainDate.value),
          ]);

  ///TODO: Implement Summery
  Widget widgetSummery() => Card(
          child: Padding(
        padding: AppPaddings.homepageSummeryCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppTexts.homepageSummaryTitle, style: AppTextStyles.cardTitle),
            AppSpaces.h20,
            Padding(
              padding: AppPaddings.homepageSummeryCardData,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: List.generate(
                            AppTexts.homepageSummaryItems.length,
                            (index) => Text(
                                AppTexts.homepageSummaryItems[index],
                                style: AppTextStyles.cardText))),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(controller.summaryContactsCount.toString()),
                          Text(controller.summaryRecordsCount.toString()),
                          Text(controller
                              .summaryBalanceCount.value.balance.toCurrency),
                        ]),
                  ]),
            ),
          ],
        ),
      ));

  Widget widgetButtons() => isRelease
      ? shrinkSizedBox
      : Padding(
          padding: AppPaddings.homepageButtons,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listButtons()));

  List<Widget> listButtons() => [
        const Text('Admin Pages:'),
        AppGeneralButton(
            text: 'Admin Test Page',
            onTap: () =>
                Get.toNamed(AppPageDetails.adminUITestPage.pageRoute!)),
        AppSpaces.h40,
        const Text('Pages:'),
        AppGeneralButton(
            text: 'Splash Screen',
            onTap: () => Get.toNamed(AppPageDetails.splashScreen.pageRoute!)),
        AppGeneralButton(
            text: 'Accounts',
            onTap: () => Get.toNamed(AppPageDetails.accounts.pageRoute!)),
        AppGeneralButton(
            text: 'Contacts',
            onTap: () => Get.toNamed(AppPageDetails.contacts.pageRoute!)),
        AppGeneralButton(
            text: 'Contacts Balance',
            onTap: () =>
                Get.toNamed(AppPageDetails.contactsBalance.pageRoute!)),
        AppGeneralButton(
            text: 'Settings',
            onTap: () => Get.toNamed(AppPageDetails.settings.pageRoute!)),
        AppGeneralButton(
            text: 'Update',
            onTap: () => Get.toNamed(AppPageDetails.update.pageRoute!)),
      ];
}
