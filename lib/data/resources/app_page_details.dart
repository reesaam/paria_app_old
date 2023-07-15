import 'package:paria_app/core/routes/app_routes.dart';
import 'package:paria_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';

class AppPageDetails {
  ///Admin Pages
  static AppPageDetail admin = const AppPageDetail(pageName: 'Admin Page');
  static AppPageDetail adminStartPage =
      const AppPageDetail(pageName: 'Admin Start Page');
  static AppPageDetail adminUITestPage = const AppPageDetail(
      pageName: 'Admin UI Test Page', pageRoute: AppRoutes.adminUITestPage);

  ///Main Pages
  static AppPageDetail splashScreen =
      const AppPageDetail(pageName: 'Splash Screen');

  static AppPageDetail homepage = const AppPageDetail(
    pageName: 'Home Page',
    pageRoute: AppRoutes.homePage,
    bottomBarItemNumber: 0,
    bottomBarIcon: 'home',
  );

  static AppPageDetail contacts = const AppPageDetail(
    pageName: 'Contacts',
    pageRoute: AppRoutes.contacts,
    bottomBarItemNumber: 1,
    bottomBarIcon: 'contacts',
  );

  static AppPageDetail accounts = const AppPageDetail(
    pageName: 'Accounts',
    pageRoute: AppRoutes.accounts,
    bottomBarItemNumber: 2,
    bottomBarIcon: 'currency',
  );

  static AppPageDetail settings = const AppPageDetail(
    pageName: 'Settings',
    pageRoute: AppRoutes.settings,
    bottomBarItemNumber: 3,
    bottomBarIcon: 'currency',
  );

  static AppPageDetail contactsBalance = const AppPageDetail(
    pageName: 'Contacts Balance',
    pageRoute: AppRoutes.contactsBalance,
    bottomBarItemNumber: -1,
    bottomBarIcon: 'currency',
  );
}
