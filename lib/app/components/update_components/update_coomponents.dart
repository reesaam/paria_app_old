import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_progress_indicator.dart';

class UpdateComponents {
  static Widget widgetDownloadProgress(int percentage, int total) => Column(children: [
        AppProgressIndicator.linearDefault(),
        Text('${(percentage).toString()} / ${total.toString()}'),
      ]);
}
