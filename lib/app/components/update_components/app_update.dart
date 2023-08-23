import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:http/http.dart' as http;
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_urls.dart';
import 'package:path_provider/path_provider.dart';

class AppCheckUpdate {
  Future<String> checkVersion() async {
    String version = AppTexts.generalNotAvailableInitials;
    final response = await http.get(Uri.parse(AppURLs.appUrlResamHostVersion));
    response.statusCode == 200 ? version = response.body : null;
    return version;
  }

  Future<void> dialogNewVersion() async =>
      await AppDialogs.appAlertDialogWithOkCancel(
          AppTexts.updateNewVersion, AppTexts.updateApprove, goToUpdatePage);

  void goToUpdatePage() {}

  Future<void> download() async {
    final directory = await getDownloadsDirectory();
    final downloadTask = FlutterDownloader.enqueue(
        url: AppURLs.appUrlResamHostAPKDownload, savedDir: directory!.path);
    await FlutterDownloader.loadTasks();
  }
}
