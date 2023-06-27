import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_paddings.dart';

abstract class CoreView<Controller extends CoreController>
    extends GetView<Controller> {
  const CoreView({final Key? key}) : super(key: key);

  Future<bool> onWillPop() async {
    Navigator.of(controller.context).pop();
    return true;
  }

  ///Main Widgets
  PreferredSizeWidget? get appBar;
  Widget get body;
  Widget? get topBar;
  Widget? get footer;
  Widget? get bottomNavigationBar;
  Widget? get floatingActionButton;

  @override
  Widget build(BuildContext context) =>
      WillPopScope(onWillPop: () => onWillPop(), child: _pageScaffold);

  Widget get _pageScaffold => Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: appBar,
        body: _pageBody,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        backgroundColor: AppColors.appBackground,
      );

  Widget get _pageBody => SafeArea(
        child: Column(children: [
          topBar == null ? const SizedBox.shrink() : topBar!,
          //Main Body
          Expanded(
              child: Padding(
                  padding: AppPaddings.pages,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      child: body))),
          footer == null ? const SizedBox.shrink() : footer!,
        ]),
      );
}
