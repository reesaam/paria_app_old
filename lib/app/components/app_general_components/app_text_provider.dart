import 'package:intl/intl.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

class AppTextProvider {
  static String getContactFullName(AppContact contact) =>
      '${contact.firstName} ${contact.lastName ?? ''}';

  static String getContactInitials(AppContact contact) =>
      '${contact.firstName!.isEmpty ? '' : contact.firstName![0]}${contact.lastName!.isEmpty ? '' : contact.lastName![0]}';

  static String formatDate(DateTime date) =>
      '${date.year.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}';

  static String formatTime(DateTime date) =>
      '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';

  static String formatDateTime(DateTime date) =>
      '${date.year.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')} - ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
}
