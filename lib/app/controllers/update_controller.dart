import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_snack_bars.dart';
import 'package:paria_app/app/components/update_components/app_update.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/resources/app_info.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_progress_indicator.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_urls.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class UpdateController extends CoreController {
  Rx<String> availableVersion = AppTexts.generalNotAvailable.obs;

  File? dlFile;
  Directory? dlDir;

  Rx<bool> downloading = true.obs;
  Rx<int> downloadTotal = 0.obs;
  Rx<int> downloadPercentage = 0.obs;

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.update;
  }

  @override
  void onInitFunction() async {
    // await checkUpdate();
    setListeners();
  }

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {
    saveAppData();
  }

  setListeners() {
    downloading.listen((data) {}).onData((data) => data == true ? Get.back() : null);
    downloadTotal.listen((data) {}).onData((data) {});
    downloadPercentage.listen((data) {}).onData((data) => refresh());
  }

  checkUpdate() async {
    AppDialogs.appBottomDialogWithoutButton(AppTexts.updateCheckingUpdate,
        AppProgressIndicator.linearDefault(), false);

    String version = await AppCheckUpdate().checkVersion();
    await Future.delayed(const Duration(seconds: 2));
    appDebugPrint('Current Version: ${AppInfo.appCurrentVersion}');
    appDebugPrint('Available Version: $version');
    Get.back();
    version == AppInfo.appCurrentVersion
        ? AppSnackBar.show(AppTexts.updateNoUpdateFound)
        : {
            availableVersion.value = version,
            AppSnackBar.show(AppTexts.updateUpdateFound)
          };
  }

  downloadUpdate() async {
    AppDialogs.appBottomDialogWithoutButton(AppTexts.updateDownloading,
        widgetDownload(), false);

    dlDir = await getExternalStorageDirectory();

    dlDir == null
        ? alertDirectoryOrFileNotFound(true)
        : {
            dlFile = File('${dlDir!.path}/${AppTexts.updateAppFilename}'),
            dlFile!.existsSync() ? dlFile!.deleteSync() : null
          };

    dlFile == null ? alertDirectoryOrFileNotFound(false) : downloadAction();
  }

  downloadAction() async {
    var responseAddress =
        await http.get(Uri.parse(AppURLs.appUrlResamHostAddress));
    String address = responseAddress.body;

    var responseData = await http.get(Uri.parse(address));
    downloadTotal.value = responseData.contentLength!;
    downloadPercentage.value = responseData.body.length;

    if (responseData.statusCode == 200) {
      await dlFile!.writeAsBytes(responseData.bodyBytes);
    }
    downloading.value = true;
    downloading.close();

    appDebugPrint(dlFile!.path);
    appDebugPrint('Content Length: ${responseData.contentLength ?? 0}');

    OpenFile.open(dlFile!.path);
  }

  Widget widgetDownload() => Obx(() => Column(children: [
    AppProgressIndicator.linearDefault(),
    Text('${downloadPercentage.value.toString()} / ${downloadTotal.value.toString()}')
  ]));

  alertDirectoryOrFileNotFound(bool directoryError) => AppDialogs.appAlertDialogWithOk(
      directoryError ? AppTexts.updateDirectoryNotFoundTitle : AppTexts.updateFileNotFoundTitle,
      directoryError ? AppTexts.updateDirectoryNotFoundContent : AppTexts.updateFileNotFoundContent,
      Get.back,
      true);
}
