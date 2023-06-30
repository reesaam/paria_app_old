import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_enums.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AppBottomNavigationBarData {
  List<BottomNavigationBarItem> getData() => <BottomNavigationBarItem>[
        ///HomePage
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.homepage),
            label: _createLabel(AppPageDetails.homepage.pageName)),

        ///Contacts
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.contacts),
            label: _createLabel(AppPageDetails.contacts.pageName)),

        ///Accounts
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.accounts),
            label: _createLabel(AppPageDetails.accounts.pageName)),

        ///Settings
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.settings),
            label: _createLabel(AppPageDetails.settings.pageName)),
      ];

  Widget _createIcon(AppBottomNavigationPages page) {
    Icon icon = const Icon(Icons.not_interested);
    switch(page) {
      case(AppBottomNavigationPages.homepage) : icon = AppIcons.homepage; break;
      case(AppBottomNavigationPages.contacts) : icon = AppIcons.contacts; break;
      case(AppBottomNavigationPages.accounts) : icon = AppIcons.accounts; break;
      case(AppBottomNavigationPages.settings) : icon = AppIcons.settings; break;
      default: break;
    }
    return icon;
  }

  String? _createLabel(String? label) => label;
}
