import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_bar/app_bar.dart';
import 'package:paria_app/app/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:paria_app/app/controllers/accounts_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AccountsPage extends CoreView<AccountsController> {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  AppPageDetail get pageDetail => AppPageDetails.accounts;

  @override
  PreferredSizeWidget? get appBar => AppAppBar().mainBar(pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(selectedIndex: pageDetail.bottomBarItemNumber);

  @override
  Widget get body => Container();

}