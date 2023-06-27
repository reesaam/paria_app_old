import 'package:get/get.dart';
import 'package:paria_app/app/views/accounts_view.dart';
import 'package:paria_app/app/views/contacts_view.dart';
import 'package:paria_app/app/views/homepage_view.dart';
import 'package:paria_app/app/views/settings_view.dart';
import 'package:paria_app/app/views/splash_screen_view.dart';
import 'package:paria_app/core/routes/app_routes.dart';

class AppPages {
  static get pages => [
        ///Admin Pages
        // GetPage(name: AppRoutes.adminStartPage, page: StartScreenPage.new),

        ///Main App Pages
        GetPage(name: AppRoutes.splashScreen, page: SplashScreenPage.new),
        GetPage(name: AppRoutes.homePage, page: HomePage.new),
        GetPage(name: AppRoutes.settings, page: SettingsPage.new),
        GetPage(name: AppRoutes.contacts, page: ContactsPage.new),
        GetPage(name: AppRoutes.accounts, page: AccountsPage.new),
      ];
}
