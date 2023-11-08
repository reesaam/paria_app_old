import '../../core/routes/app_routes.dart';
import '../data_models/core_data_models/app_page_detail/app_page_detail.dart';

class AppPageDetails {
  ///Admin Pages
  static AppPageDetail adminStartPage = const AppPageDetail(
    pageName: 'Admin Start Page',
    pageRoute: AppRoutes.adminStartPage,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  static AppPageDetail adminPagesTestPage = const AppPageDetail(
    pageName: 'Admin Pages Test Page',
    pageRoute: AppRoutes.adminPagesTestPage,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  static AppPageDetail adminUITestPage = const AppPageDetail(
    pageName: 'Admin UI Test Page',
    pageRoute: AppRoutes.adminUITestPage,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  ///Main Pages
  static AppPageDetail splashScreen = const AppPageDetail(
    pageName: 'Splash Screen',
    pageRoute: AppRoutes.splashScreen,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

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
    bottomBarIcon: 'settings',
  );

  static AppPageDetail contactsBalance = const AppPageDetail(
    pageName: 'Contacts Balance',
    pageRoute: AppRoutes.contactsBalance,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  static AppPageDetail update = const AppPageDetail(
    pageName: 'Update',
    pageRoute: AppRoutes.update,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );
}
