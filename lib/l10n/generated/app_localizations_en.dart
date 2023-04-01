import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get profile => 'profile';

  @override
  String get chats => 'chats';

  @override
  String get explore => 'explore';

  @override
  String get search => 'search';

  @override
  String get authNotify => 'To continue using the application, you need to log in.';

  @override
  String get phoneLogin => 'Login with phone';
}
