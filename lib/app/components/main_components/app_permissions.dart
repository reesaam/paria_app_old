import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class AppPermissions {

  AppPermissions() {
    fillLists();
  }

  List<Permission> listPermissions = List<Permission>.empty(growable: true);

  void fillLists() {
    Platform.isIOS ? null : listPermissions.add(Permission.location);
    Platform.isIOS ? null : listPermissions.add(Permission.locationAlways);
    listPermissions.add(Permission.phone);
    listPermissions.add(Permission.storage);
    listPermissions.add(Permission.sms);
    listPermissions.add(Permission.notification);
    listPermissions.add(Permission.criticalAlerts);
    listPermissions.add(Permission.microphone);
    listPermissions.add(Permission.ignoreBatteryOptimizations);
    listPermissions.add(Permission.sensors);
    listPermissions.add(Permission.mediaLibrary);
    listPermissions.add(Permission.photos);
    listPermissions.add(Permission.videos);
    listPermissions.add(Permission.activityRecognition);
  }

  Future<String> checkAllPermissions() async {
    String permissionMessage = PermissionStatus.granted.name.toLowerCase();
    await _checkPermissionsList(listPermissions);
    return permissionMessage;
  }

  List<String> get listManifestPermissions => [
        'ACCESS_COARSE_LOCATION',
        'ACCESS_FINE_LOCATION',
        'ACCESS_LOCATION_EXTRA_COMMANDS',
        'ACCESS_NETWORK_STATE',
        'ACCESS_NOTIFICATION_POLICY',
        'ACCESS_WIFI_STATE',
        'ANSWER_PHONE_CALLS',
        'CALL_PHONE',
        'READ_CALL_LOG',
        'ANSWER_PHONE_CALLS',
        'CAMERA',
        'CHANGE_WIFI_STATE',
        'INTERNET',
        'READ_EXTERNAL_STORAGE',
        'READ_PHONE_STATE',
        'READ_SMS',
        'SEND_SMS',
        'VIBRATE',
      ];

  //Check single permission function
  Future<String> checkPermission(Permission permission) async {
    late String result;
    await permission.request().then((permission) => result = permission.name);
    return await permission
        .request()
        .then((permission) => result = permission.name);
  }

  //Check list of permissions function
  Future<String> _checkPermissionsList(List<Permission> permissions) async {
    String permissionMessage = PermissionStatus.granted.name.toLowerCase();
    for (var permission in permissions) {
      await permission.request() == PermissionStatus.granted
          ? null
          : permissionMessage =
              permission.toString().toLowerCase().replaceAll(".", "");
    }
    return permissionMessage;
  }
}
