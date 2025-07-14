// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Bristol Stool Chart';

  @override
  String get newFeaturesTitle => 'New Features Available!';

  @override
  String get newFeature1 =>
      'Tap on a stool in the graph to view or edit the details, or to remove it.';

  @override
  String get newFeature2 =>
      'Add optional notes when adding a stool. The notes are included when you share your data.';

  @override
  String get errorOccurredTitle => 'An error occurred';

  @override
  String get fatalErrorOccurredMessage =>
      'Very unexpected error. Please try restarting the app.';

  @override
  String get stoolNotSavedErrorOccurredMessage =>
      'Your stool was not saved successfully. Please try again later.';

  @override
  String get dataNotRemovedErrorOccurredMessage =>
      'There was a problem removing your data. Please try again later.';

  @override
  String get shareErrorOccurredMessage =>
      'There was a problem sharing your data. Please make sure that you have an email client installed on your device.';

  @override
  String get emailErrorOccurredMessage =>
      'There was a problem sending an email. Please make sure that you have an email client installed on your device.';

  @override
  String get dataImportErrorOccurredMessage =>
      'Unfortunately we could not import your data from the previous version of the app. We apologise for any inconvenience caused.';

  @override
  String get stoolEditedSuccessMessage => 'Stool edited successfully!';

  @override
  String get stoolSavedSuccessMessage => 'Stool added successfully!';

  @override
  String get continueButtonText => 'Continue';

  @override
  String get saveButtonText => 'SAVE';

  @override
  String get deleteButtonText => 'DELETE';

  @override
  String get graphPageTitle => 'Your Graph';

  @override
  String get graphLabel => 'STOOL QUALITY';

  @override
  String get aboutPageTitle => 'About';

  @override
  String get aboutGraphPageTitle => 'About the Graph';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get addStoolPageTitle => 'Add Stool';

  @override
  String get editStoolPageTitle => 'Edit Stool';

  @override
  String get aboutPageHeading1 => 'What is the Bristol Stool Chart?';

  @override
  String get howDoesItWorkHeading => 'How does the app work?';

  @override
  String get newFeaturesHeading => 'New features!';

  @override
  String get newFeaturesParagraph1 =>
      'You can now tap on an entry on the graph to view, edit or remove it. You can also add optional notes. These have been the most requested features for the app. I hope you find them useful!';

  @override
  String get aboutPageHeading3 => 'Thank you';

  @override
  String get aboutPageHeading4 => 'Feature requests';

  @override
  String get aboutPageParagraph1 =>
      'The Bristol Stool Chart is a medical aid designed to classify the form of human stools into seven categories.\nThis app turns the Bristol Stool Chart into a handy tool to track the quality of your bowel movements over time. \nThis can be useful if you are monitoring your general intestinal health or monitoring the effects of other factors on your digestive system, such as new medication, caffeine or alcohol.';

  @override
  String get howDoesItWorkParagraph =>
      'Each time your bowels move you can record the time and stool quality by swiping left or right on the stool images. You can also add notes.\nYou can enable the blood check by going to the Settings page in the app.\nThis information is then saved to your device, and the app builds up a graph of your intestinal health over time.\nThis graph can be shared with your health professional if you are concerned about any aspect of your health. Simply tap the Share button below the graph.';

  @override
  String get aboutPageParagraph3 =>
      'Thank you for downloading this app. Hopefully you will find it useful in monitoring your intestinal health.';

  @override
  String get aboutPageParagraph4 =>
      'Is there something crucial missing from the app?\nSomething annoying about it?\nDo you have a great idea for an enhancement?\nOr any other feedback, good or bad?\n\nThen please let me know, I\'d love to hear from you!\n\nYou can contact me directly at david@web-garden.co.uk - or just click the button below.';

  @override
  String get graphIntroText => 'To begin, tap the button below to add a stool';

  @override
  String get shareButtonText => 'SHARE';

  @override
  String get graphDrawerLinkText => 'Graph';

  @override
  String get settingsDrawerLinkText => 'Settings';

  @override
  String get aboutDrawerLinkText => 'About';

  @override
  String get appVersionLabelFormatString => 'App version %s';

  @override
  String get bloodCheckLabelText => 'Was there blood in the stool?';

  @override
  String get notesLabelText => 'Notes';

  @override
  String get notesPlaceholderText => 'Add any notes here (optional)';

  @override
  String get stoolPickerInitialDateValue =>
      'Now (or click to select a date and time)';

  @override
  String get dataRemovedTitle => 'Data Deleted';

  @override
  String get dataRemovedMessage => 'Your data was removed from the device.';

  @override
  String get bloodCheckHeading => 'Blood check';

  @override
  String get bloodCheckParagraph =>
      'You can record whenever you have blood in your stool by enabling this feature. This will add a \'Was there blood in the stool?\' checkbox to the add screen. Any stools that have blood in them will be displayed in red on the graph.';

  @override
  String get bloodCheckToggleLabel => 'Enable blood check feature?';

  @override
  String get removeDataHeading => 'Remove all data';

  @override
  String get removeDataParagraph =>
      'You can remove all data from the app and start again with a clean sheet. Simply tap the Delete Data button, below.';

  @override
  String get removeDataButtonText => 'DELETE DATA';

  @override
  String get areYouSureTitle => 'Are you sure?';

  @override
  String get areYouSureDeleteDataMessage =>
      'All of your data will be permanently removed. Do you wish to continue?';

  @override
  String get areYouSureDeleteStoolMessage =>
      'This stool will be permanently removed. Do you wish to continue?';

  @override
  String get cancelButtonText => 'CANCEL';

  @override
  String get doneButtonText => 'DONE';

  @override
  String get nextButtonText => 'NEXT';

  @override
  String get skipButtonText => 'SKIP';

  @override
  String get deleteAllDataButtonText => 'DELETE ALL DATA';

  @override
  String get deleteStoolButtonText => 'DELETE STOOL';

  @override
  String get introPageTitle1 => 'Welcome';

  @override
  String get introPageDescription1 =>
      'This app is a simple tool to allow you to track your bowel movements and to share that data with your health professional.';

  @override
  String get introPageTitle2 => 'How it works';

  @override
  String get introPageDescription2 =>
      'Use the add button on the graph to add a stool. Swipe left or right until you find the right image. Set the time if you need to change it and add optional notes. You can also use the Settings section to enable the blood check feature if that is of use to you. Tap the save button to save and return to the graph.';

  @override
  String get introPageTitle3 => 'Share your data';

  @override
  String get introPageDescription3 =>
      'To share your data, tap the share button under the graph. This will allow you to send your graph and data to your chosen contact via your chosen app.';

  @override
  String get graphInfoPageHeading1 => 'What the graph tells you';

  @override
  String get graphInfoPageParagraph1 =>
      'In general, it is best if your stool quality stays close to the green line on the graph. If it tends towards the edges, i.e. towards type 1 or towards type 7, then you may be experiencing issues with your digestive system. It is recommended that you consult your health professional if you are consistently recording events towards the top or bottom of the graph.';

  @override
  String get graphInfoPageParagraph2 =>
      'Types 1 and 2 indicate constipation, types 3 and 4 are usually the most comfortable to pass, types 5 and 6 tend to be associated with urgency and type 7 is diarrhea.';

  @override
  String get graphInfoPageParagraph3 =>
      'For more information on each type of stool, please tap on the following links to the Bristol Stool Chart website:';

  @override
  String get graphInfoPageHeading2 => 'Zooming the graph';

  @override
  String get graphInfoPageParagraph4 =>
      'You can zoom in on the graph in two ways: you can put two fingers on the graph and spread them, or you can double-tap the graph. Double-tapping again will unzoom the graph. When the graph is zoomed in you can also scroll back and forth in the usual way (with a single finger swiping left or right on the graph). If you are planning on sharing the graph image, you can zoom and scroll until what you see on the screen is exactly what you would like to share.';

  @override
  String get graphInfoPageHeading3 => 'Sharing your data';

  @override
  String get graphInfoPageParagraph5 =>
      'You can share your data by tapping the Share button below the graph. Remember that you can zoom and scroll the graph to make sure it is displaying the information that you would like to share. The share function uses other apps on your device to share the files (a picture of the graph and a spreadsheet of the data). You will be presented with a list of apps based on the apps that are installed on your device.';

  @override
  String get graphInfoPageParagraph6 =>
      'NOTE: if you do not have a compatible app installed to share the data (e.g. the Google Mail app or similar) an error message will be displayed.';

  @override
  String get shareDialogSubject => 'Share your graph and data';

  @override
  String get dataYesIndicator => 'Y';

  @override
  String get dataNoIndicator => 'N';

  @override
  String get dataDateTimeHeader => 'Date and time';

  @override
  String get dataTypeHeader => 'BSC type';

  @override
  String get dataBloodHeader => 'Blood in stool?';

  @override
  String get dataNotesHeader => 'Notes';

  @override
  String get dateTimeFormatFull => 'dd/MM/yyyy H:mm:ss';

  @override
  String get dateTimeFormatVerbose => 'd MMMM yyyy @ HH:mm';

  @override
  String get dateTimeFormatGraphMonthsDays => 'MMM\ndd';

  @override
  String get dateTimeFormatGraphHoursMinutes => 'HH:mm';

  @override
  String get dateTimePickerMask => 'dd MMM yyyy    HH:mm';

  @override
  String get type1Name => 'one';

  @override
  String get type2Name => 'two';

  @override
  String get type3Name => 'three';

  @override
  String get type4Name => 'four';

  @override
  String get type5Name => 'five';

  @override
  String get type6Name => 'six';

  @override
  String get type7Name => 'seven';

  @override
  String get typeFormatString => 'Type %s';

  @override
  String get emailMeButtonLabel => 'Send me an email!';

  @override
  String get feedbackEmailSubjectLine => 'Bristol Stool Chart app feedback';
}
