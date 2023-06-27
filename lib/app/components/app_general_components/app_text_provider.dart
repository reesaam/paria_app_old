import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

class AppTextProvider {
  static String getFullName(AppContact contact) =>
      '${contact.firstName} ${contact.lastName}';

  static String getContactInitials(AppContact contact) =>
      '${contact.firstName![0]}${contact.lastName![0]}';

  static dateText(DateTime date) => '${date.year}/${date.month}/${date.day}';
}
