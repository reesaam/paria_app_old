import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

abstract class AppPermissionsRepository {
  Future<String> checkAllPermissions();
  Future<String> checkLocationPermission();
  Future<String> checkSmsPermission();
  Future<String> checkCameraPermission();
}

class AppPermissions implements AppPermissionsRepository {
  @override
  Future<String> checkAllPermissions() async {
    String permissionMessage = PermissionStatus.granted.name.toLowerCase();

    List<Permission> permissions = List.empty(growable: true);

    ///Any required permission should add here:
    Platform.isIOS ? null : permissions.add(Permission.location);
    permissions.add(Permission.notification);
    permissions.add(Permission.sms);

    _checkPermissionsList(permissions);
    return permissionMessage;
  }

  @override
  Future<String> checkLocationPermission() async =>
      await _checkPermission(Permission.location);

  @override
  Future<String> checkSmsPermission() async =>
      await _checkPermission(Permission.sms);

  Future<String> checkPhotoPermission() async =>
      await _checkPermission(Permission.photos);

  @override
  Future<String> checkCameraPermission() async =>
      await _checkPermission(Permission.camera);

  //Check single permission function
  Future<String> _checkPermission(Permission permission) async {
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
