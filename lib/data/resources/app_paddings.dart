import 'package:flutter/material.dart';

class AppPaddings {
  ///General
  static EdgeInsets get zero => const EdgeInsets.all(0);
  static EdgeInsets get pages => const EdgeInsets.all(10);

  ///Modals
  static EdgeInsets get generalModal => const EdgeInsets.all(20);

  ///HomePage
  static EdgeInsets get homepageDateTimeCard => const EdgeInsets.fromLTRB(0, 20, 0, 20);
  static EdgeInsets get homepageButtons => const EdgeInsets.fromLTRB(50, 0, 50, 0);

  ///Contacts
  static EdgeInsets get contactsNoContacts => const EdgeInsets.all(50);
  static EdgeInsets get contactsItem => const EdgeInsets.only(left: 20, top: 10);

  ///Accounts
  static EdgeInsets get accountsSummaryCard => const EdgeInsets.all(20);
  static EdgeInsets get accountsNoRecordText => const EdgeInsets.all(40);
  static EdgeInsets get accountsSelectContactList => const EdgeInsets.fromLTRB(10, 10, 10, 10);

  ///Accounts Add New Record Modal

  ///Settings
  static EdgeInsets get settingsSection => const EdgeInsets.fromLTRB(0, 5, 0, 10);
  static EdgeInsets get settingsItem => const EdgeInsets.fromLTRB(10, 5, 10, 5);
}