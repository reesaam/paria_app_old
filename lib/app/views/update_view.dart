import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_bar.dart';
import 'package:paria_app/app/controllers/update_controller.dart';
import 'package:paria_app/core/elements/core_view.dart';

class UpdatePage extends CoreView<UpdateController> {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => null;

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Container();
}
