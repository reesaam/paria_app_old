import 'dart:async';
import 'dart:io';

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

  Rx<bool> downloaded = false.obs;

  @override
  void dataInit() {}

  @override
  void pageInit() {
    pageDetail = AppPageDetails.update;
  }

  @override
  void onInitFunction() async {
    downloaded
        .listen((data) {})
        .onData((data) => data == true ? Get.back() : null);
  }

  @override
  void onReadyFunction() async {
    await checkUpdate();
  }

  @override
  void onCloseFunction() {
    saveAppData();
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
        AppProgressIndicator.linearDefault(), false);

    dlDir = await getExternalStorageDirectory();

    dlDir == null
        ? alertDirectoryOrFileNotFound(true)
        : {
            dlFile = File('${dlDir!.path}/${AppTexts.updateAppFilename}'),
            dlFile == null
                ? alertDirectoryOrFileNotFound(false)
                : {
                    dlFile!.existsSync() ? dlFile!.deleteSync() : null,
                    downloadAction(),
                  }
          };
  }

  downloadAction() async {
    downloaded.value = false;
    var responseAddress =
        await http.get(Uri.parse(AppURLs.appUrlResamHostAddress));
    String downloadAddress = responseAddress.body;

    var responseData = await http.get(Uri.parse(downloadAddress));

    if (responseData.statusCode == 200) {
      await dlFile!.writeAsBytes(responseData.bodyBytes);
    }
    downloaded.value = true;
    appDebugPrint('Download Path: ${dlFile!.path}');
    appDebugPrint('Content Length: ${responseData.contentLength ?? 0}');

    AppSnackBar.show(AppTexts.updateDownloaded);

    AppDialogs.appAlertDialogWithOkCancel(AppTexts.updateInstallationTitle,
        AppTexts.updateInstallationContent, installUpdate, true);
  }

  void installUpdate() => OpenFile.open(dlFile!.path);

  alertDirectoryOrFileNotFound(bool directoryError) =>
      AppDialogs.appAlertDialogWithOk(
          directoryError
              ? AppTexts.updateDirectoryNotFoundTitle
              : AppTexts.updateFileNotFoundTitle,
          directoryError
              ? AppTexts.updateDirectoryNotFoundContent
              : AppTexts.updateFileNotFoundContent,
          Get.back,
          true);
}
