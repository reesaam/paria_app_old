import 'dart:async';

import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/update_components/app_update.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_urls.dart';
import 'package:path_provider/path_provider.dart';

class UpdateController extends CoreController {
  Rx<String> availableVersion = AppTexts.generalNotAvailable.obs;

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.update;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {
    saveAppData();
  }

  checkUpdate() async {
    String version = await AppCheckUpdate().checkVersion();
    version == AppInfo.appCurrentVersion
        ? null
        : availableVersion.value = version;
  }

  void downloadUpdate() async {
    final directory = await getDownloadsDirectory();
    final downloadTask = FlutterDownloader.enqueue(
        url: AppURLs.appUrlResamHostAPKDownload, savedDir: directory!.path);
    await FlutterDownloader.loadTasks();
    
  }
}
