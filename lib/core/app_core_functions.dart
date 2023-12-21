import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../app/components/main_components/app_dialogs.dart';
import '../data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import '../data/resources/app_texts.dart';
import '../data/storage/app_local_storage.dart';
import '../data/storage/app_shared_preferences.dart';

bool get isRelease => false;

void appDebugPrint(message) => isRelease ? null : debugPrint('$message');

void saveAppData() {
  AppSharedPreferences.to.saveData();
}

void loadAppData() {
  AppSharedPreferences.to.loadData();
}

void clearAppData() {
  AppLocalStorage.to.clearStorage();
  AppSharedPreferences.to.clearData();
  appDebugPrint('** All App Data Cleared **');
}

Future<bool> onBackButtonPressed(AppPageDetail pageDetail) async {
  bool response = true;
  pageDetail.bottomBarItemNumber == -1
      ? null
      : {appExitDialog(), response = false};
  return response;
}

void appExitDialog() => AppDialogs.appAlertDialogWithOkCancel(
    AppTexts.appExit, AppTexts.areYouSure, appExit, true);

void appExit() {
  appDebugPrint('** App Exit Triggered **');
  AppSharedPreferences.to.saveData();
  appDebugPrint('** All App Data Saved **');
  exit(0);
}
