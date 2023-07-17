import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';

class AppIcons {
  ///Icons
  static Icon get home => const Icon(Icons.home);
  static Icon get contacts => const Icon(Icons.people);
  static Icon get person => const Icon(Icons.person);
  static Icon get account => const Icon(Icons.monetization_on);
  static Icon get list => const Icon(Icons.list);
  static Icon get settings => const Icon(Icons.settings);
  static Icon get threeDots => const Icon(Icons.more_vert);
  static Icon get mobile => const Icon(Icons.phone_android);
  static Icon get phone => const Icon(Icons.phone);
  static Icon get email => const Icon(Icons.email);
  static Icon get web => const Icon(Icons.language);
  static Icon get arrowForward => const Icon(Icons.arrow_forward_ios);
  static Icon get arrowBack => const Icon(Icons.arrow_back_ios);
  static Icon get filter => const Icon(Icons.filter_alt);
  static Icon get noFilter => const Icon(Icons.filter_alt_off);

  ///BottomNavigationBar Icons
  static Icon get bottomNavigationHomepage => home;
  static Icon get bottomNavigationContacts => contacts;
  static Icon get bottomNavigationAccounts => account;
  static Icon get bottomNavigationSettings => settings;
}