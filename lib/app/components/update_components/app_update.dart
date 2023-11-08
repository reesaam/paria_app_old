import 'package:http/http.dart' as http;

import '../../../core/admin/app_core_functions.dart';
import '../../../data/resources/app_texts.dart';
import '../../../data/resources/app_urls.dart';

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
}
