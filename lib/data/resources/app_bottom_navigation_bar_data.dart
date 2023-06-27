import 'package:flutter/material.dart';
import 'package:paria_app/data/resources/app_colors.dart';
import 'package:paria_app/data/resources/app_page_details.dart';

class AppBottomNavigationBarData {
  List<BottomNavigationBarItem> getData() => <BottomNavigationBarItem>[
        ///HomePage
        BottomNavigationBarItem(
            icon: _createIcon(Icons.home),
            label: _createLabel(AppPageDetails.homepage.pageName)),

        ///Contacts
        BottomNavigationBarItem(
            icon: _createIcon(Icons.people),
            label: _createLabel(AppPageDetails.contacts.pageName)),

        ///Accounts
        BottomNavigationBarItem(
            icon: _createIcon(Icons.monetization_on),
            label: _createLabel(AppPageDetails.accounts.pageName)),

        ///Settings
        BottomNavigationBarItem(
            icon: _createIcon(Icons.settings),
            label: _createLabel(AppPageDetails.settings.pageName)),
      ];

  Widget _createIcon(IconData icon) => Icon(icon);

  String? _createLabel(String? label) => label;
}
