import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paria_app/data/storage/local_storage.dart';
import 'package:paria_app/data/storage/shared_preferences.dart';

void appDebugPrint(message) => debugPrint('$message');

void clearAppData() {
  AppLocalStorage.to.clearStorage();
  AppSharedPreferences.to.clearData();
}

void appExit() {
  AppSharedPreferences.to.saveData();
}