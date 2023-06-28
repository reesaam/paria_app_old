import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';

extension AppContactsSort on AppContactsList {
  AppContactsList sortFirstName() {
    contactsList.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    return AppContactsList(contactsList: contactsList);
  }
}