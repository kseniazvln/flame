import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @ageRange.
  ///
  /// In en, this message translates to:
  /// **'Your age partner'**
  String get ageRange;

  /// No description provided for @bio.
  ///
  /// In en, this message translates to:
  /// **'Your bio'**
  String get bio;

  /// No description provided for @bioHint.
  ///
  /// In en, this message translates to:
  /// **'bio'**
  String get bioHint;

  /// No description provided for @birthdayHint.
  ///
  /// In en, this message translates to:
  /// **'dd / mm / yyyy'**
  String get birthdayHint;

  /// No description provided for @nameHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameHint;

  /// No description provided for @myOrientation.
  ///
  /// In en, this message translates to:
  /// **'Your orientation'**
  String get myOrientation;

  /// No description provided for @mySearch.
  ///
  /// In en, this message translates to:
  /// **'Who are you looking for'**
  String get mySearch;

  /// No description provided for @mySex.
  ///
  /// In en, this message translates to:
  /// **'Your sex'**
  String get mySex;

  /// No description provided for @aboutBirthday.
  ///
  /// In en, this message translates to:
  /// **'Your date of birth will be taken into account when selecting a partner'**
  String get aboutBirthday;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Your birthday'**
  String get birthday;

  /// No description provided for @aboutName.
  ///
  /// In en, this message translates to:
  /// **'The name will be displayed in the profile and shown to other users when searching'**
  String get aboutName;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get name;

  /// No description provided for @logInWithGitHub.
  ///
  /// In en, this message translates to:
  /// **'Log In With GitHub'**
  String get logInWithGitHub;

  /// No description provided for @phoneHint.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneHint;

  /// No description provided for @continueAction.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE'**
  String get continueAction;

  /// No description provided for @aboutPhone.
  ///
  /// In en, this message translates to:
  /// **'After clicking on the \"Continue\" button, Flame will send you a message with a verification code. You may be charged for sending a message or transmitting data. After verifying your phone number, you can use it to sign in to Flame.'**
  String get aboutPhone;

  /// No description provided for @myPhone.
  ///
  /// In en, this message translates to:
  /// **'My phone:'**
  String get myPhone;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'profile'**
  String get profile;

  /// No description provided for @chats.
  ///
  /// In en, this message translates to:
  /// **'chats'**
  String get chats;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'explore'**
  String get explore;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'search'**
  String get search;

  /// No description provided for @authNotify.
  ///
  /// In en, this message translates to:
  /// **'To continue using the application, you need to log in.'**
  String get authNotify;

  /// No description provided for @phoneLogin.
  ///
  /// In en, this message translates to:
  /// **'Login with phone'**
  String get phoneLogin;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
