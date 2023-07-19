import 'package:intl/intl.dart';
import 'package:paria_app/data/resources/app_enums.dart';

extension CurrencyNull on int? {
  String get toCurrency => this == null ? '' : (this as int).toCurrency;
}

extension Currency on int {
  String get toCurrency =>
      NumberFormat.decimalPattern(AppRegions.en_us.name).format(this);
}
