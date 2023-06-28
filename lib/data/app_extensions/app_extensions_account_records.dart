import 'package:paria_app/data/data_models/accounts_data_models/account_records/account_record.dart';
import 'package:paria_app/data/storage/local_storage.dart';

extension Storage on AccountRecordsList {
  saveOnStorage() async {
    await AppLocalStorage.to.saveAccountsRecords(this);
  }
}

extension AddRecord on AccountRecordsList {
  addRecord(AccountRecord record) {
    List<AccountRecord> records = List<AccountRecord>.empty(growable: true);
    records.addAll(recordsList);
    records.add(record);
    sortByDateTime();
    recordsList = records;
    saveOnStorage();
  }
}

extension SortRecords on AccountRecordsList {
  sortByDateTime() {
    List<AccountRecord> records = List<AccountRecord>.empty(growable: true);
    records.addAll(recordsList);
    records.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));
    recordsList = records;
  }

  sortByContact() {
    List<AccountRecord> records = List<AccountRecord>.empty(growable: true);
    records.addAll(recordsList);
    records.sort((a, b) => a.contact!.firstName!.compareTo(b.contact!.firstName!));
    recordsList = records;
  }
}
