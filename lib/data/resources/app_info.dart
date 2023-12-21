class AppInfo {
  static String get appName => 'Paria Assistant App';
  static String get appNameInitials => 'PAA';
  static String get website => '';

  static List<String> get versions => [
        '0.0.1',
        '0.0.2',
        '0.0.3',
        '0.0.4',
        '0.0.5',
        '0.0.6', // Major Refactor
      ];

  static String get appCurrentVersion => versions.last;
  static int get appVersionsCounter => versions.length;
}
