class AppTexts {
  ///General
  static String get generalVersion => 'Version';
  static String get generalOK => 'OK';
  static String get generalCancel => 'Cancel';
  static String get generalEmpty => '';
  static String get generalNotAvailable => 'Not Available';
  static String get generalNotAvailableInitials => 'N/A';
  static String get total => 'Total';
  static String get from => 'From';
  static String get to => 'To';
  static String get warning => 'Warning';
  static String get alert => 'Alert!';
  static String get information => 'Information';
  static String get areYouSure => 'Are you sure?\nData will be lost with this Function.';

  ///Homepage
  static String get homepageDateTimeTitle => 'Today';

  ///Contacts
  static String get contactsNoContacts => 'No Contacts';
  static String get contactsOptionShow => 'Show Contact';
  static String get contactsOptionEdit => 'Edit Contact';
  static String get contactsOptionRemove => 'Remove Contact';

  ///Contacts Show Contact
  static String get contactsShowContactTitle => 'Contact Page';
  static String get contactsShowContactTitleInfo => 'Personal Info:';
  static String get contactsShowContactItemMobile => 'Mobile:';
  static String get contactsShowContactItemPhone => 'Phone:';
  static String get contactsShowContactItemEmail => 'Email:';
  static String get contactsShowContactItemWebLink => 'Web Link:';
  static String get contactsShowContactTitleAccount => 'Account Info:';
  static String get contactsShowContactTitleBalance => 'Balance:';
  static String get contactsShowContactTitleRecords => 'Records Count:';

  ///Contacts Add New Contact Modal
  static String get contactsAddContactTitle => 'Add New Contact';
  static String get contactsEditContactTitle => 'Edit Contact';
  static String get contactsAddContactFirstNameTitle => 'First Name';
  static String get contactsAddContactFirstNameHint => 'Enter First Name';
  static String get contactsAddContactLastNameTitle => 'Last Name';
  static String get contactsAddContactLastNameHint => 'Enter Last Name';
  static String get contactsAddContactMobileTitle => 'Mobile';
  static String get contactsAddContactMobileHint => 'Enter Mobile';
  static String get contactsAddContactPhoneTitle => 'Phone';
  static String get contactsAddContactPhoneHint => 'Enter Phone';
  static String get contactsAddContactEmailTitle => 'Email';
  static String get contactsAddContactEmailHint => 'Enter Email';
  static String get contactsAddContactWebLinkTitle => 'Web Link';
  static String get contactsAddContactWebLinkHint => 'Enter Web Link';

  ///Contacts Balance
  static String get contactsBalanceTitleContact => 'Contact';
  static String get contactsBalanceTitleBalance => 'Balance';
  static String get contactsBalanceTitleCount => 'Count';

  static String get contactsBalanceNoRecord => 'There is No Records for this Contact!';

  ///Accounts
  static String get accountsContactsBalance => 'All Balances';
  static String get accountsRecordsTableTitle => 'Records Table';
  static List<String> get accountSummaryItems => ['Balance:', 'Items Count:', 'Contacts Count:'];
  static String get accountsNoRecords => 'No Records';

  static String get accountsTablePopupMenuRemoveAllRecords => 'Remove All Records';
  static String get accountsTablePopupMenuShowClearedRecords => 'Show Cleared Records';
  static String get accountsTablePopupMenuHideClearedRecords => 'Hide Cleared Records';
  static String get accountsTablePopupMenuShowPositiveRecords => 'Show Positive Records Only';
  static String get accountsTablePopupMenuClearPositiveRecords => 'Clear Positive Records Only';
  static String get accountsTablePopupMenuShowNegativeRecords => 'Show Negative Records Only';
  static String get accountsTablePopupMenuClearNegativeRecords => 'Clear Negative Records Only';

  static String get accountsTableItemMenuCheck => 'Check Item';
  static String get accountsTableItemMenuEdit => 'Edit Item';
  static String get accountsTableItemMenuRemove => 'Remove Item';

  ///Accounts Add New Record Modal
  static String get accountsAddRecordTitle => 'Add New Record';
  static String get accountsEditRecordTitle => 'Edit Record';
  static String get accountsAddRecordFieldContactTitle => 'Contact';
  static String get accountsAddRecordFieldContactHint => 'Enter a Contact or Name';
  static String get accountsAddRecordFieldTitleTitle => 'Description';
  static String get accountsAddRecordFieldDescriptionHint => 'Enter a Description';
  static String get accountsAddRecordFieldAmountDescription => 'Amount';
  static String get accountsAddRecordFieldAmountHint => 'Enter the Amount';
  static String get accountsAddRecordFieldDateTimeTitle => 'Date & Time';
  static String get accountsAddRecordFieldDateTimeHint => 'Enter Date and Time';
  static String get accountsAddRecordChooseContact => 'Choose a Contact:';

  ///Accounts Filter
  static String get accountAddFilterTitle => 'Filter';
  static String get accountsAddFilterPanelTitleAmount => 'Amount';
  static String get accountsAddFilterPanelTitleDateTime => 'Date & Time';
  static String get accountsAddFilterFieldContactTitle => 'Contact';
  static String get accountsAddFilterFieldContactHint => 'Enter a Contact or Name';
  static String get accountsAddFilterFieldDescriptionTitle => 'Description';
  static String get accountsAddFilterFieldDescriptionHint => 'Enter a Description';
  static String get accountsAddFilterFieldAmountDescription => 'Amount';
  static String get accountsAddFilterFieldAmountFromHint => 'Enter the Amount Start';
  static String get accountsAddFilterFieldAmountToHint => 'Enter the Amount End';
  static String get accountsAddFilterFieldDateTimeTitle => 'Date & Time';
  static String get accountsAddFilterFieldDateTimeFromHint => 'Enter Date and Time Start';
  static String get accountsAddFilterFieldDateTimeToHint => 'Enter Date and Time End';

  ///Settings
  static String get settingAppbarMenuResetSettings => 'Reset All Settings';

  static String get settingSectionTitleGeneral => 'General';
  static String get settingSectionTitleGeneralLanguage => 'Language';
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