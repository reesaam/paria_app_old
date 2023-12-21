import 'package:dio/dio.dart';

import '../../../data/resources/app_urls.dart';

class DioCore {
  Duration get _defaultTimeOut => const Duration(seconds: 10);
  Duration get _defaultConnectTimeOut => _defaultTimeOut;
  Duration get _defaultSendTimeOut => _defaultTimeOut;
  Duration get _defaultReceiveTimeOut => _defaultTimeOut;

  BaseOptions get _baseOptions => BaseOptions(
      baseUrl: AppURLs.baseHostUrl,
      sendTimeout: _defaultSendTimeOut,
      receiveTimeout: _defaultReceiveTimeOut,
      connectTimeout: _defaultConnectTimeOut);

  Dio get instance => Dio(_baseOptions);

  Options get dioOptions => Options(
      receiveTimeout: _defaultReceiveTimeOut, sendTimeout: _defaultSendTimeOut);
}
