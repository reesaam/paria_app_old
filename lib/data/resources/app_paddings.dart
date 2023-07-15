import 'package:flutter/material.dart';

class AppPaddings {
  ///General
  static EdgeInsets get zero => const EdgeInsets.all(0);
  static EdgeInsets get pages => const EdgeInsets.all(10);

  ///Modules
  static EdgeInsets get textFieldContent => const EdgeInsets.fromLTRB(20, 10, 20, 10);

  ///Modals
  static EdgeInsets get generalBottomModal => const EdgeInsets.all(20);
  static EdgeInsets get generalAlertDialog => const EdgeInsets.all(20);

  ///HomePage
  static EdgeInsets get homepageDateTimeCard => const EdgeInsets.fromLTRB(0, 20, 0, 20);
  static EdgeInsets get homepageButtons => const EdgeInsets.fromLTRB(50, 0, 50, 0);

  ///Contacts
  static EdgeInsets get contactsNoContacts => const EdgeInsets.all(50);
  static EdgeInsets get contactsItem => const EdgeInsets.only(left: 20, top: 10);

  ///Contacts Show Contact
  static EdgeInsets get contactsShowContactItems => const EdgeInsets.fromLTRB(20, 50, 40, 20);
  static EdgeInsets get contactsShowContactItem => const EdgeInsets.fromLTRB(0, 5, 0, 5);

  ///Contacts balance
  static EdgeInsets get contactsBalanceTitle => const EdgeInsets.fromLTRB(5, 5, 5, 0);
  static EdgeInsets get contactsBalanceItem => const EdgeInsets.fromLTRB(5, 5, 5, 5);

  ///Accounts
  static EdgeInsets get accountsSummaryCard => const EdgeInsets.all(20);
  static EdgeInsets get accountsNoRecordText => const EdgeInsets.all(40);
  static EdgeInsets get accountsSelectContactList => const EdgeInsets.fromLTRB(10, 10, 10, 10);

  ///Accounts Add New Record Modal

  ///Settings
  static EdgeInsets get settingsSection => const EdgeInsets.fromLTRB(0, 20, 0, 10);
  static EdgeInsets get settingsItem => const EdgeInsets.fromLTRB(15, 10, 15, 10);
}