import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/app/components/app_general_components/app_snackbars.dart';
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
    AppDialogs.appBottomDialogWithoutButton(
        AppTexts.updateCheckingUpdate, AppProgressIndicator.linearDefault(), false);

    String version = await AppCheckUpdate().checkVersion();
    await Future.delayed(const Duration(seconds: 5));
    appDebugPrint('Current Version: ${AppInfo.appCurrentVersion}');
    appDebugPrint('Available Version: $version');
    Get.back();
    version == AppInfo.appCurrentVersion
        ? null
        : {
            availableVersion.value = version,
            AppSnackBar.show(AppTexts.updateUpdateFound)
          };
  }

  // void downloadUpdate() async {
  //   Rx<bool> downloading = true.obs;
  //
  //   AppDialogs.appBottomDialogWithoutButton(
  //       AppTexts.updateDownloading, AppProgressIndicator.linearDefault());
  //
  //   downloading
  //       .listen((data) {})
  //       .onData((data) => data == true ? Get.back() : null);
  //
  //     const String filename = 'paria_app.apk';
  //     final directory = await getExternalStorageDirectory();
  //     final file = File('${directory!.path}/$filename');
  //
  //   final downloadTask = await FlutterDownloader.enqueue(
  //     url: AppURLs.appUrlResamHostAPKDownload,
  //     savedDir: directory.path,
  //     showNotification: true,
  //   );
  //   await FlutterDownloader.loadTasks();
  //
  //   await FlutterDownloader.open(taskId: downloadTask!);
  //
  //   downloading.value = true;
  //   downloading.close();
  // }

  void downloadUpdate() async {
    Rx<bool> downloading = true.obs;

    AppDialogs.appBottomDialogWithoutButton(
        AppTexts.updateDownloading, AppProgressIndicator.linearDefault(), false);

    downloading
        .listen((data) {})
        .onData((data) => data == true ? Get.back() : null);

    const String filename = 'paria_app.txt';
    final directory = await getExternalStorageDirectory();
    final file = File('${directory!.path}/$filename');
    file.existsSync() ? file.deleteSync() : null;

    var response =
        await http.get(Uri.parse(AppURLs.appUrlResamHostAPKDownload));

    if (response.statusCode == 200) {
      await file.writeAsBytes(response.bodyBytes);
    }
    downloading.value = true;
    downloading.close();

    appDebugPrint(file.path);
    appDebugPrint(response.body);
    appDebugPrint('Content Length: ${response.contentLength ?? 0}');

    file.open();
  }

  // void downloadUpdate() async {
  //   final dio = Dio();
  //   Rx<bool> downloading = true.obs;
  //   AppDialogs.appBottomDialogWithoutButton(
  //       AppTexts.updateDownloading, AppProgressIndicator.linearDefault());
  //   downloading
  //       .listen((data) {})
  //       .onData((data) => data == true ? Get.back() : null);
  //
  //     var url = Uri.parse(AppURLs.appUrlResamHostAPKDownload);
  //     const String filename = 'paria_app.apk';
  //     final directory = await getExternalStorageDirectory();
  //     final file = File('${directory!.path}/$filename');
  //
  //     var response = await dio.download(url.path, filename);
  //     appDebugPrint(response);
  //     appDebugPrint(file.path);
  //     appDebugPrint(file.open());
  // }
}
