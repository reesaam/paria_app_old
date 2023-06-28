import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/components/buttons/app_general_button.dart';
import 'package:paria_app/app/controllers/homepage_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_spaces.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';
import 'package:paria_app/data/resources/app_texts.dart';

class HomePage extends CoreView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

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
            Text(AppTexts.homepageDateTimeTitle),
            AppSpaces.h20,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(controller.time.value),
                  Text(controller.date.value)
                ]),
          ]),
        ),
      );

  Widget widgetButtons() => Padding(
        padding: AppPaddings.homepageButtons,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: listButtons()),
      );

  List<Widget> listButtons() => [
        AppGeneralButton(text: 'Accounts', onTap: () {}),
      ];
}
