import 'package:flutter/material.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';

class AppAppBar {
  PreferredSizeWidget? mainBar(AppPageDetail pageDetail) => AppBar(
    title: Text(pageDetail.pageName ?? ''),
  );
}