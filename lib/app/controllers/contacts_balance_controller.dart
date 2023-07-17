import 'package:paria_app/core/elements/core_controller.dart';
import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/data_models/core_data_models/app_contact/app_contact.dart';
import 'package:paria_app/data/resources/app_page_details.dart';
import 'package:paria_app/data/storage/local_storage.dart';

class ContactsBalanceController extends CoreController {

  AppContactsList listContacts = AppContactsList(contactsList: List<AppContact>.empty(growable: true));
  AccountRecordsList listRecords = AccountRecordsList(recordsList: List<AppAccountRecord>.empty(growable: true));

  @override
  void dataInit() {
    listContacts = AppLocalStorage.to.loadContacts();
    listRecords = AppLocalStorage.to.loadAccountsRecords();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.contactsBalance;
  }

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {}
}
