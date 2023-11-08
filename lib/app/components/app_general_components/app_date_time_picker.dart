import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

import '../../../data/resources/app_themes.dart';

class AppDateTimePicker {
  final georgianNow = DateTime.now();
  final jalaliNow = Jalali.now();

  Future<DateTime?> defaultDatetimePicker() async => await georgian();

  Future<DateTime?> georgian() async => await showDatePicker(
      context: Get.context!,
      builder: (context, child) {
        return Theme(
            data: AppThemes.calendarTheme,
            child: child!);
      },
      initialDate: georgianNow,
      firstDate: georgianNow.copyWith(year: georgianNow.year - 10),
      lastDate: georgianNow.copyWith(year: georgianNow.year + 10));

  Future<Jalali?> persian() async => await showPersianDatePicker(
      context: Get.context!,
      initialDate: jalaliNow,
      firstDate: jalaliNow.copy(year: jalaliNow.year - 10),
      lastDate: jalaliNow.copy(year: jalaliNow.year + 10));
}
