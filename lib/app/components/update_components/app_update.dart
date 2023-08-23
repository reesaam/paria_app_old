import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_urls.dart';

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

  void goToUpdatePage() => Get.toNamed(AppPageDetails.update.pageRoute!);
}
