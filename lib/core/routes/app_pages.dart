import 'package:get/get.dart';

import '../../admin/views/admin_pages_test_page_view.dart';
import '../../admin/views/admin_start_page_view.dart';
import '../../admin/views/admin_ui_test_page_view.dart';
import '../../app/views/accounts_view.dart';
import '../../app/views/contacts_balance_view.dart';
import '../../app/views/contacts_view.dart';
import '../../app/views/homepage_view.dart';
import '../../app/views/settings_view.dart';
import '../../app/views/splash_screen_view.dart';
import '../../app/views/update_view.dart';
import 'app_routes.dart';

class AppPages {
  static get pages => [
        ///Admin Pages
        GetPage(name: AppRoutes.adminStartPage, page: AdminStartPage.new),
        GetPage(name: AppRoutes.adminPagesTestPage, page: AdminPagesTestPage.new),
        GetPage(name: AppRoutes.adminUITestPage, page: AdminUITestPage.new),

        ///Main App Pages
        GetPage(name: AppRoutes.splashScreen, page: SplashScreenPage.new),
        GetPage(name: AppRoutes.homePage, page: HomePage.new),
        GetPage(name: AppRoutes.settings, page: SettingsPage.new),
        GetPage(name: AppRoutes.contacts, page: ContactsPage.new),
        GetPage(name: AppRoutes.contactsBalance, page: ContactsBalancePage.new),
        GetPage(name: AppRoutes.accounts, page: AccountsPage.new),
        GetPage(name: AppRoutes.update, page: UpdatePage.new),
      ];
}
