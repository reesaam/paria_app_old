import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:paria_app/data/remote/dio/core_dio.dart';

import '../../../core/app_core_functions.dart';
import '../../../data/resources/app_texts.dart';
import '../../../data/resources/app_urls.dart';

class AppCheckUpdate {
  Future<String> checkVersion() async => _checkVersionDio();

  ///HTTP
  Future<String> _checkVersionHttp() async {
    String version = AppTexts.generalNotAvailableInitials;
    final response = await http.get(Uri.parse(AppURLs.appUrlResamHostVersion));
    appDebugPrint('Data HTTP Get:');
    appDebugPrint('Data body: ${response.body}');
    appDebugPrint('Status Code: ${response.statusCode}');
    response.statusCode == 200 ? version = response.body : null;
    return version;
  }

  ///Dio
  Future<String> _checkVersionDio() async {
    String version = AppTexts.generalNotAvailableInitials;
    Dio dio = DioCore().instance;

    try {
      Response response = await dio.get(AppURLs.appUrlResamHostVersion,
          options: DioCore().dioOptions);
      appDebugPrint('StatusCode: ${response.statusCode}');
      appDebugPrint('StatusMessage: ${response.statusMessage}');
      response.statusCode == 200 ? version = response.data : null;
    } on DioException catch (dioEx) {
      throw dioEx;
    } catch (ex) {
      throw ex;
    }

    return version;
  }
}
