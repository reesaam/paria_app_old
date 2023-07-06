import 'package:intl/intl.dart';
import 'package:paria_app/data/resources/app_enums.dart';

extension Currency on int? {
  toCurrency() =>
      NumberFormat.decimalPattern(AppRegions.en_us.name).format(this);
}
