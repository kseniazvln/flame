import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get birthdayHint => 'dd / mm / yyyy';

  @override
  String get nameHint => 'Name';

  @override
  String get myOrientation => 'Your orientation';

  @override
  String get mySearch => 'Who are you looking for';

  @override
  String get mySex => 'Your sex';

  @override
  String get aboutBirthday => 'Your date of birth will be taken into account when selecting a partner';

  @override
  String get birthday => 'Your birthday';

  @override
  String get aboutName => 'The name will be displayed in the profile and shown to other users when searching';

  @override
  String get name => 'Your name';

  @override
  String get logInWithGitHub => 'Log In With GitHub';

  @override
  String get phoneHint => 'Phone number';

  @override
  String get continueAction => 'CONTINUE';

  @override
  String get aboutPhone => 'After clicking on the \"Continue\" button, Flame will send you a message with a verification code. You may be charged for sending a message or transmitting data. After verifying your phone number, you can use it to sign in to Flame.';

  @override
  String get myPhone => 'My phone:';

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
