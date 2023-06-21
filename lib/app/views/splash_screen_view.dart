import 'package:flutter/material.dart';
import 'package:paria_app/app/controllers/splash_screen_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class SplashScreenPage extends CoreView<SplashScreenController> {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  AppPageDetail get pageDetail => AppPageDetails.splashScreen;

  @override
  PreferredSizeWidget? get appBar => null;

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => null;

  @override
  Widget get body => Container();

}