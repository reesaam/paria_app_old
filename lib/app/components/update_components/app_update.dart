import 'package:http/http.dart' as http;
import 'package:paria_app/app/components/app_general_components/app_dialogs.dart';
import 'package:paria_app/data/resources/app_texts.dart';
import 'package:paria_app/data/resources/app_urls.dart';

class AppUpdate {
  Future<String> checkVersion() async {
    String version = AppTexts.generalNotAvailableInitials;
    final response = await http.get(Uri.parse(AppURLs.appUrlResamHostVersion));
    response.statusCode == 200 ? version = response.body : null;
    return version;
  }

  Future<void> dialogNewVersion() async => await AppDialogs.appAlertDialogWithOkCancel(
      AppTexts.updateNewVersion, AppTexts.updateApprove, download);

  Future<void> download() async {}
}
