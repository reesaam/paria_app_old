import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paria_app/core/bindings/core_bindings.dart';
import 'package:paria_app/core/routes/app_pages.dart';
import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_themes.dart';

void main() async {
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppInfo.appName,
      initialRoute: AppRoutes.startPage,
      getPages: AppPages.pages,
      initialBinding: CoreBindings(),
      theme: AppThemes.mainTheme,
      supportedLocales: const [Locale('en')],
    );
  }
}