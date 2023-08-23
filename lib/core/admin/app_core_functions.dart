import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/storage/app_local_storage.dart';
import 'package:paria_app/data/storage/app_shared_preferences.dart';

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

Future<bool> get onBackButtonPressed async {
  var response = false;
  appExitDialog;
  return response;
}

void get appExitDialog => AppDialogs.appAlertDialogWithOkCancel(
    AppTexts.appExit, AppTexts.areYouSure, () => appExit);

void get appExit {
  appDebugPrint('** App Exit Triggered **');
  AppSharedPreferences.to.saveData();
  appDebugPrint('** All App Data Saved **');
  exit(0);
}
