import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/homepage_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class HomePage extends CoreView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get topBar => null;

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
      children: [widgetDateTime(), AppSpaces.h20, widgetButtons()]);

  Widget widgetDateTime() => Card(
        // color: AppColors.cardBackground,
        // shape: AppElements.defaultOutlineBorderFocused,
        child: Padding(
          padding: AppPaddings.homepageDateTimeCard,
          child: Column(children: [
            Text(AppTexts.homepageDateTimeTitle,
                style: AppTextStyles.cardTitle),
            AppSpaces.h20,
            Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(controller.time.value),
                      Text(controller.date.value)
                    ])),
          ]),
        ),
      );

  Widget widgetButtons() => Padding(
      padding: AppPaddings.homepageButtons,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: listButtons()));

  List<Widget> listButtons() => [
        AppGeneralButton(
            text: 'Splash Screen',
            onTap: () => Get.toNamed(AppRoutes.splashScreen)),
        AppGeneralButton(
            text: 'Accounts', onTap: () => Get.toNamed(AppRoutes.accounts)),
        AppGeneralButton(
            text: 'Contacts', onTap: () => Get.toNamed(AppRoutes.contacts)),
        AppGeneralButton(
            text: 'Contacts Balance',
            onTap: () => Get.toNamed(AppRoutes.contactsBalance)),
        AppGeneralButton(
            text: 'Settings', onTap: () => Get.toNamed(AppRoutes.settings)),
      ];
}
