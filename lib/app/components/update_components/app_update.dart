import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/core/admin/app_core_functions.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_urls.dart';

class AppCheckUpdate {
  Future<String> checkVersion() async {
    String version = AppTexts.generalNotAvailableInitials;
    final response = await http.get(Uri.parse(AppURLs.appUrlResamHostVersion));
    appDebugPrint('Data HTTP Get:');
    appDebugPrint('Data body: ${response.body}');
    appDebugPrint('Status Code: ${response.statusCode}');
    response.statusCode == 200 ? version = response.body : null;
    return version;
  }

  Future<void> dialogNewVersion() async {
    appDebugPrint('Alert Dialog - New Version raising...');
    await AppDialogs.appAlertDialogWithOkCancel(AppTexts.updateNewVersion,
        AppTexts.updateApprove, goToUpdatePage, false);
    appDebugPrint('Alert Dialog - New Version closed');
  }

  void goToUpdatePage() =>
      {Get.back(), Get.toNamed(AppPageDetails.update.pageRoute!)};
}
