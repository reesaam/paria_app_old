import 'dart:convert' as convert;

import 'package:get_storage/get_storage.dart';

abstract class LocalStorageServiceImp {
  Future<void> write(String key, dynamic value);
  dynamic read(String key);
  void remove(String key);
  dynamic getKeys();
  bool hasData(String key);
  Map<String, dynamic> get changes;
}

class LocalStorageService implements LocalStorageServiceImp {
  LocalStorageService() {
    _init();
  }

  late GetStorage _storage;
  void _init() => _storage = GetStorage();

  @override
  Map<String, dynamic> get changes => _storage.changes;

  @override
  getKeys() {}

  @override
  bool hasData(String key) => _storage.hasData(key);

  @override
  read(String key) {
    final data = _storage.read(key);
    return data == null ? null : convert.jsonDecode(data.toString());
  }

  @override
  Future<void> write(String key, value) async =>
      await _storage.write(key, convert.jsonEncode(value));

  @override
  void remove(String key) => _storage.remove(key);
}
