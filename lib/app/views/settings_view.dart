import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/controllers/settings_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class SettingsPage extends CoreView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

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
  Widget get body => Container();
}
