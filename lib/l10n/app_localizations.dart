import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// The title of the app
  ///
  /// In en, this message translates to:
  /// **'Bristol Stool Chart'**
  String get appTitle;

  /// The title of the dialog shown to a user on the first run of a new version of the app
  ///
  /// In en, this message translates to:
  /// **'New Features Available!'**
  String get newFeaturesTitle;

  /// The first new feature in the list
  ///
  /// In en, this message translates to:
  /// **'Tap on a stool in the graph to view or edit the details, or to remove it.'**
  String get newFeature1;

  /// The second new feature in the list
  ///
  /// In en, this message translates to:
  /// **'Add optional notes when adding a stool. The notes are included when you share your data.'**
  String get newFeature2;

  /// Title displayed when an error occurs in the app
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get errorOccurredTitle;

  /// Displayed when an error occurs loading data in the app
  ///
  /// In en, this message translates to:
  /// **'Very unexpected error. Please try restarting the app.'**
  String get fatalErrorOccurredMessage;

  /// Displayed when an error occurs saving a stool
  ///
  /// In en, this message translates to:
  /// **'Your stool was not saved successfully. Please try again later.'**
  String get stoolNotSavedErrorOccurredMessage;

  /// Displayed when an error occurs removing user data
  ///
  /// In en, this message translates to:
  /// **'There was a problem removing your data. Please try again later.'**
  String get dataNotRemovedErrorOccurredMessage;

  /// Displayed when an error occurs sharing data from the app
  ///
  /// In en, this message translates to:
  /// **'There was a problem sharing your data. Please make sure that you have an email client installed on your device.'**
  String get shareErrorOccurredMessage;

  /// Displayed when an error occurs sending email from the app
  ///
  /// In en, this message translates to:
  /// **'There was a problem sending an email. Please make sure that you have an email client installed on your device.'**
  String get emailErrorOccurredMessage;

  /// Displayed when an error occurs importing data from old versions of the app
  ///
  /// In en, this message translates to:
  /// **'Unfortunately we could not import your data from the previous version of the app. We apologise for any inconvenience caused.'**
  String get dataImportErrorOccurredMessage;

  /// Displayed when an stool is edited
  ///
  /// In en, this message translates to:
  /// **'Stool edited successfully!'**
  String get stoolEditedSuccessMessage;

  /// Displayed when an stool is saved
  ///
  /// In en, this message translates to:
  /// **'Stool added successfully!'**
  String get stoolSavedSuccessMessage;

  /// The text for the continue button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButtonText;

  /// The text for the save button
  ///
  /// In en, this message translates to:
  /// **'SAVE'**
  String get saveButtonText;

  /// The text for the delete button
  ///
  /// In en, this message translates to:
  /// **'DELETE'**
  String get deleteButtonText;

  /// The title for the graph page
  ///
  /// In en, this message translates to:
  /// **'Your Graph'**
  String get graphPageTitle;

  /// The label for the graph
  ///
  /// In en, this message translates to:
  /// **'STOOL QUALITY'**
  String get graphLabel;

  /// The title for the about page
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutPageTitle;

  /// The title for the about graph page
  ///
  /// In en, this message translates to:
  /// **'About the Graph'**
  String get aboutGraphPageTitle;

  /// The title for the settings page
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// The title for the add stool page
  ///
  /// In en, this message translates to:
  /// **'Add Stool'**
  String get addStoolPageTitle;

  /// The title for the edit stool page
  ///
  /// In en, this message translates to:
  /// **'Edit Stool'**
  String get editStoolPageTitle;

  /// Headline 1 for the about page content
  ///
  /// In en, this message translates to:
  /// **'What is the Bristol Stool Chart?'**
  String get aboutPageHeading1;

  /// Headline 2 for the about page content
  ///
  /// In en, this message translates to:
  /// **'How does the app work?'**
  String get howDoesItWorkHeading;

  /// New features heading for the about page content
  ///
  /// In en, this message translates to:
  /// **'New features!'**
  String get newFeaturesHeading;

  /// New features paragraph 1 for the about page content
  ///
  /// In en, this message translates to:
  /// **'You can now tap on an entry on the graph to view, edit or remove it. You can also add optional notes. These have been the most requested features for the app. I hope you find them useful!'**
  String get newFeaturesParagraph1;

  /// Headline 3 for the about page content
  ///
  /// In en, this message translates to:
  /// **'Thank you'**
  String get aboutPageHeading3;

  /// Headline 4 for the about page content
  ///
  /// In en, this message translates to:
  /// **'Feature requests'**
  String get aboutPageHeading4;

  /// Paragraph 1 for the about page content
  ///
  /// In en, this message translates to:
  /// **'The Bristol Stool Chart is a medical aid designed to classify the form of human stools into seven categories.\nThis app turns the Bristol Stool Chart into a handy tool to track the quality of your bowel movements over time. \nThis can be useful if you are monitoring your general intestinal health or monitoring the effects of other factors on your digestive system, such as new medication, caffeine or alcohol.'**
  String get aboutPageParagraph1;

  /// Paragraph 2 for the about page content
  ///
  /// In en, this message translates to:
  /// **'Each time your bowels move you can record the time and stool quality by swiping left or right on the stool images. You can also add notes.\nYou can enable the blood check by going to the Settings page in the app.\nThis information is then saved to your device, and the app builds up a graph of your intestinal health over time.\nThis graph can be shared with your health professional if you are concerned about any aspect of your health. Simply tap the Share button below the graph.'**
  String get howDoesItWorkParagraph;

  /// Paragraph 3 for the about page content
  ///
  /// In en, this message translates to:
  /// **'Thank you for downloading this app. Hopefully you will find it useful in monitoring your intestinal health.'**
  String get aboutPageParagraph3;

  /// Paragraph 4 for the about page content
  ///
  /// In en, this message translates to:
  /// **'Is there something crucial missing from the app?\nSomething annoying about it?\nDo you have a great idea for an enhancement?\nOr any other feedback, good or bad?\n\nThen please let me know, I\'d love to hear from you!\n\nYou can contact me directly at david@web-garden.co.uk - or just click the button below.'**
  String get aboutPageParagraph4;

  /// The text displayed on the graph page when there are no stools added yet
  ///
  /// In en, this message translates to:
  /// **'To begin, tap the button below to add a stool'**
  String get graphIntroText;

  /// The text displayed on the share button
  ///
  /// In en, this message translates to:
  /// **'SHARE'**
  String get shareButtonText;

  /// The text displayed on the graph drawer link
  ///
  /// In en, this message translates to:
  /// **'Graph'**
  String get graphDrawerLinkText;

  /// The text displayed on the settings drawer link
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsDrawerLinkText;

  /// The text displayed on the about drawer link
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutDrawerLinkText;

  /// The text displayed with the app version in the drawer
  ///
  /// In en, this message translates to:
  /// **'App version %s'**
  String get appVersionLabelFormatString;

  /// The text displayed next to the blood check toggle control
  ///
  /// In en, this message translates to:
  /// **'Was there blood in the stool?'**
  String get bloodCheckLabelText;

  /// The text displayed above the notes textfield
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notesLabelText;

  /// The placeholder text for the notes textfield
  ///
  /// In en, this message translates to:
  /// **'Add any notes here (optional)'**
  String get notesPlaceholderText;

  /// The initial text displayed in the date picker
  ///
  /// In en, this message translates to:
  /// **'Now (or click to select a date and time)'**
  String get stoolPickerInitialDateValue;

  /// The title displayed when the user's data was removed successfully
  ///
  /// In en, this message translates to:
  /// **'Data Deleted'**
  String get dataRemovedTitle;

  /// The message displayed when the user's data was removed successfully
  ///
  /// In en, this message translates to:
  /// **'Your data was removed from the device.'**
  String get dataRemovedMessage;

  /// The heading displayed on the settings page
  ///
  /// In en, this message translates to:
  /// **'Blood check'**
  String get bloodCheckHeading;

  /// The text displayed on the settings page
  ///
  /// In en, this message translates to:
  /// **'You can record whenever you have blood in your stool by enabling this feature. This will add a \'Was there blood in the stool?\' checkbox to the add screen. Any stools that have blood in them will be displayed in red on the graph.'**
  String get bloodCheckParagraph;

  /// The text displayed on the settings page next to the toggle to enable blood checks in the app
  ///
  /// In en, this message translates to:
  /// **'Enable blood check feature?'**
  String get bloodCheckToggleLabel;

  /// The heading displayed on the settings page
  ///
  /// In en, this message translates to:
  /// **'Remove all data'**
  String get removeDataHeading;

  /// The text displayed on the settings page
  ///
  /// In en, this message translates to:
  /// **'You can remove all data from the app and start again with a clean sheet. Simply tap the Delete Data button, below.'**
  String get removeDataParagraph;

  /// The text displayed on the remove data button
  ///
  /// In en, this message translates to:
  /// **'DELETE DATA'**
  String get removeDataButtonText;

  /// The title displayed in the are you sure popup
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSureTitle;

  /// The text displayed in the are you sure popup when deleting all user data
  ///
  /// In en, this message translates to:
  /// **'All of your data will be permanently removed. Do you wish to continue?'**
  String get areYouSureDeleteDataMessage;

  /// The text displayed in the are you sure popup when deleting a stool
  ///
  /// In en, this message translates to:
  /// **'This stool will be permanently removed. Do you wish to continue?'**
  String get areYouSureDeleteStoolMessage;

  /// The text displayed on the cancel button
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get cancelButtonText;

  /// The text displayed on the done button
  ///
  /// In en, this message translates to:
  /// **'DONE'**
  String get doneButtonText;

  /// The text displayed on the next button
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get nextButtonText;

  /// The text displayed on the skip button
  ///
  /// In en, this message translates to:
  /// **'SKIP'**
  String get skipButtonText;

  /// The text displayed on the confirm button in the are you sure popup when deleting all data in the app
  ///
  /// In en, this message translates to:
  /// **'DELETE ALL DATA'**
  String get deleteAllDataButtonText;

  /// The text displayed on the confirm button in the are you sure popup when deleting a stool
  ///
  /// In en, this message translates to:
  /// **'DELETE STOOL'**
  String get deleteStoolButtonText;

  /// Title for slide 1 for the app intro slider
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get introPageTitle1;

  /// Description for slide 1 for the app intro slider
  ///
  /// In en, this message translates to:
  /// **'This app is a simple tool to allow you to track your bowel movements and to share that data with your health professional.'**
  String get introPageDescription1;

  /// Title for slide 2 for the app intro slider
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get introPageTitle2;

  /// Description for slide 2 for the app intro slider
  ///
  /// In en, this message translates to:
  /// **'Use the add button on the graph to add a stool. Swipe left or right until you find the right image. Set the time if you need to change it and add optional notes. You can also use the Settings section to enable the blood check feature if that is of use to you. Tap the save button to save and return to the graph.'**
  String get introPageDescription2;

  /// Title for slide 3 for the app intro slider
  ///
  /// In en, this message translates to:
  /// **'Share your data'**
  String get introPageTitle3;

  /// Description for slide 3 for the app intro slider
  ///
  /// In en, this message translates to:
  /// **'To share your data, tap the share button under the graph. This will allow you to send your graph and data to your chosen contact via your chosen app.'**
  String get introPageDescription3;

  /// Graph info page heading 1
  ///
  /// In en, this message translates to:
  /// **'What the graph tells you'**
  String get graphInfoPageHeading1;

  /// Graph info page paragraph 1
  ///
  /// In en, this message translates to:
  /// **'In general, it is best if your stool quality stays close to the green line on the graph. If it tends towards the edges, i.e. towards type 1 or towards type 7, then you may be experiencing issues with your digestive system. It is recommended that you consult your health professional if you are consistently recording events towards the top or bottom of the graph.'**
  String get graphInfoPageParagraph1;

  /// Graph info page paragraph 2
  ///
  /// In en, this message translates to:
  /// **'Types 1 and 2 indicate constipation, types 3 and 4 are usually the most comfortable to pass, types 5 and 6 tend to be associated with urgency and type 7 is diarrhea.'**
  String get graphInfoPageParagraph2;

  /// Graph info page paragraph 3
  ///
  /// In en, this message translates to:
  /// **'For more information on each type of stool, please tap on the following links to the Bristol Stool Chart website:'**
  String get graphInfoPageParagraph3;

  /// Graph info page heading 2
  ///
  /// In en, this message translates to:
  /// **'Zooming the graph'**
  String get graphInfoPageHeading2;

  /// Graph info page paragraph 4
  ///
  /// In en, this message translates to:
  /// **'You can zoom in on the graph in two ways: you can put two fingers on the graph and spread them, or you can double-tap the graph. Double-tapping again will unzoom the graph. When the graph is zoomed in you can also scroll back and forth in the usual way (with a single finger swiping left or right on the graph). If you are planning on sharing the graph image, you can zoom and scroll until what you see on the screen is exactly what you would like to share.'**
  String get graphInfoPageParagraph4;

  /// Graph info page heading 3
  ///
  /// In en, this message translates to:
  /// **'Sharing your data'**
  String get graphInfoPageHeading3;

  /// Graph info page paragraph 5
  ///
  /// In en, this message translates to:
  /// **'You can share your data by tapping the Share button below the graph. Remember that you can zoom and scroll the graph to make sure it is displaying the information that you would like to share. The share function uses other apps on your device to share the files (a picture of the graph and a spreadsheet of the data). You will be presented with a list of apps based on the apps that are installed on your device.'**
  String get graphInfoPageParagraph5;

  /// Graph info page paragraph 6
  ///
  /// In en, this message translates to:
  /// **'NOTE: if you do not have a compatible app installed to share the data (e.g. the Google Mail app or similar) an error message will be displayed.'**
  String get graphInfoPageParagraph6;

  /// The subject displayed in the operating system share dialog
  ///
  /// In en, this message translates to:
  /// **'Share your graph and data'**
  String get shareDialogSubject;

  /// The character used in the data being shared to indicate yes or true
  ///
  /// In en, this message translates to:
  /// **'Y'**
  String get dataYesIndicator;

  /// The character used in the data being shared to indicate no or false
  ///
  /// In en, this message translates to:
  /// **'N'**
  String get dataNoIndicator;

  /// The header text for the datetime column in the data
  ///
  /// In en, this message translates to:
  /// **'Date and time'**
  String get dataDateTimeHeader;

  /// The header text for the type column in the data
  ///
  /// In en, this message translates to:
  /// **'BSC type'**
  String get dataTypeHeader;

  /// The header text for the blood indicator column in the data
  ///
  /// In en, this message translates to:
  /// **'Blood in stool?'**
  String get dataBloodHeader;

  /// The header text for the notes column in the data
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get dataNotesHeader;

  /// The datetime format to display to the user when adding a stool
  ///
  /// In en, this message translates to:
  /// **'dd/MM/yyyy H:mm:ss'**
  String get dateTimeFormatFull;

  /// No description provided for @dateTimeFormatVerbose.
  ///
  /// In en, this message translates to:
  /// **'d MMMM yyyy @ HH:mm'**
  String get dateTimeFormatVerbose;

  /// The datetime format string used to display months and days in the graph, e.g AUG 17 (with newline)
  ///
  /// In en, this message translates to:
  /// **'MMM\ndd'**
  String get dateTimeFormatGraphMonthsDays;

  /// The datetime format string used to display hours and minutes in the graph, e.g 23:59
  ///
  /// In en, this message translates to:
  /// **'HH:mm'**
  String get dateTimeFormatGraphHoursMinutes;

  /// The mask used to format the dates displayed in the datetime picker when adding a stool
  ///
  /// In en, this message translates to:
  /// **'dd MMM yyyy    HH:mm'**
  String get dateTimePickerMask;

  /// The name of type 1 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'one'**
  String get type1Name;

  /// The name of type 2 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'two'**
  String get type2Name;

  /// The name of type 3 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'three'**
  String get type3Name;

  /// The name of type 4 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'four'**
  String get type4Name;

  /// The name of type 5 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'five'**
  String get type5Name;

  /// The name of type 6 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'six'**
  String get type6Name;

  /// The name of type 7 used to generate links to the website
  ///
  /// In en, this message translates to:
  /// **'seven'**
  String get type7Name;

  /// The format string for links to the website from the app, e.g. 'Type 7'
  ///
  /// In en, this message translates to:
  /// **'Type %s'**
  String get typeFormatString;

  /// The label for the email button on the about page
  ///
  /// In en, this message translates to:
  /// **'Send me an email!'**
  String get emailMeButtonLabel;

  /// The subject line for the feedback email
  ///
  /// In en, this message translates to:
  /// **'Bristol Stool Chart app feedback'**
  String get feedbackEmailSubjectLine;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
