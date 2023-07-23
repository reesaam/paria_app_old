import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paria_app/data/storage/local_storage.dart';
import 'package:paria_app/data/storage/shared_preferences.dart';

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

void get appExit {
  appDebugPrint('** App Exit Triggered **');
  AppSharedPreferences.to.saveData();
}
