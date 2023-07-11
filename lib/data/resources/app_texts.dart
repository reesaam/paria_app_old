class AppTexts {
  ///General
  static String get generalVersion => 'Version';
  static String get generalOK => 'OK';
  static String get generalCancel => 'Cancel';
  static String get generalEmpty => '';
  static String get generalNotAvailable => 'Not Available';
  static String get generalNotAvailableInitials => 'N/A';

  ///Homepage
  static String get homepageDateTimeTitle => 'Today';

  ///Contacts
  static String get contactsNoContacts => 'No Contacts';

  ///Contacts Add New Contact Modal
  static String get contactsAddNewContactTitle => 'Add New Contact';
  static String get contactsAddNewContactFirstNameTitle => 'First Name';
  static String get contactsAddNewContactFirstNameHint => 'Enter First Name';
  static String get contactsAddNewContactLastNameTitle => 'Last Name';
  static String get contactsAddNewContactLastNameHint => 'Enter Last Name';
  static String get contactsAddNewContactMobileTitle => 'Mobile';
  static String get contactsAddNewContactMobileHint => 'Enter Mobile';

  ///Accounts
  static String get accountsContactsBalance => 'Contacts\' Balance';
  static String get accountsRecordsTableTitle => 'Records Table';
  static List<String> get accountSummaryItems => ['Balance:', 'Items Count:', 'Contacts Count:'];
  static String get accountsNoRecords => 'No Records';

  static String get accountsTablePopupMenuRemoveAllRecords => 'Remove All Records';
  static String get accountsTablePopupMenuShowClearedRecords => 'Show Cleared Records';
  static String get accountsTablePopupMenuHideClearedRecords => 'Hide Cleared Records';

  ///Accounts Add New Record Modal
  static String get accountsAddNewRecordTitle => 'Add New Record';
  static String get accountsAddNewRecordFieldContactTitle => 'Contact';
  static String get accountsAddNewRecordFieldContactHint => 'Enter a Contact or Name';
  static String get accountsAddNewRecordFieldTitleTitle => 'Description';
  static String get accountsAddNewRecordFieldTitleHint => 'Enter a Description';
  static String get accountsAddNewRecordFieldAmountTitle => 'Amount';
  static String get accountsAddNewRecordFieldAmountHint => 'Enter the Amount';
  static String get accountsAddNewRecordFieldDateTimeTitle => 'Date & Time';
  static String get accountsAddNewRecordFieldDateTimeHint => 'Enter Date and Time';
  static String get accountsAddNewRecordChooseContact => 'Choose a Contact:';

  ///Settings
  static String get settingSectionTitleGeneral => 'General';
  static String get settingSectionTitleGeneralCalendar => 'Calendar Type';
  static String get settingSectionGeneralItemDarkMode => 'Dark Mode';

  static String get settingSectionTitleBackup => 'Backup';
  static String get settingSectionBackupBackup => 'Backup Data';
  static String get settingSectionBackupRestore => 'Restore Data';

  static String get settingSectionTitleStorage => 'Storage';
  static String get settingSectionStorageItemEraseContacts => 'Erase Contacts';
  static String get settingSectionStorageItemEraseRecords => 'Erase Account Records';
  static String get settingSectionStorageItemEraseAllData => 'Erase All Data';
}