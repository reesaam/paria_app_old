import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paria_app/data/storage/local_storage.dart';
import 'package:paria_app/data/storage/shared_preferences.dart';

bool get isRelease => false;

void appDebugPrint(message) => debugPrint('$message');

void get clearAppData {
  AppLocalStorage.to.clearStorage();
  AppSharedPreferences.to.clearData();
}

void get appExit {
  AppSharedPreferences.to.saveData();
}