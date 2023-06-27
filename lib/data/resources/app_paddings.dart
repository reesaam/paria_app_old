import 'package:flutter/material.dart';

class AppPaddings {
  ///General
  static EdgeInsets get pages => const EdgeInsets.all(10);

  ///Modals
  static EdgeInsets get generalModal => const EdgeInsets.all(20);

  ///HomePage
  static EdgeInsets get homepageDateTimeCard => const EdgeInsets.fromLTRB(0, 20, 0, 20);
  static EdgeInsets get homepageButtons => const EdgeInsets.fromLTRB(50, 0, 50, 0);

  ///Contacts
  static EdgeInsets get contactsItem => const EdgeInsets.only(left: 20);

  ///Accounts
  static EdgeInsets get accountsSummaryCard => const EdgeInsets.all(20);

  ///Accounts Add New Record Modal

}