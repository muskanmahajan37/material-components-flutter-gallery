import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

/// Callers can lookup localized strings with an instance of GalleryLocalizations returned
/// by `GalleryLocalizations.of(context)`.
///
/// Applications need to include `GalleryLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'l10n/gallery_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: GalleryLocalizations.localizationsDelegates,
///   supportedLocales: GalleryLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: 0.16.0
///   intl_translation: 0.17.7
///
///   # rest of dependencies
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
/// be consistent with the languages listed in the GalleryLocalizations.supportedLocales
/// property.
class GalleryLocalizations {
  GalleryLocalizations(Locale locale)
      : _localeName = Intl.canonicalizedLocale(locale.toString());

  final String _localeName;

  static Future<GalleryLocalizations> load(Locale locale) {
    return initializeMessages(locale.toString())
        .then<GalleryLocalizations>((_) => GalleryLocalizations(locale));
  }

  static GalleryLocalizations of(BuildContext context) {
    return Localizations.of<GalleryLocalizations>(
        context, GalleryLocalizations);
  }

  static const LocalizationsDelegate<GalleryLocalizations> delegate =
      _GalleryLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('ar', 'EG'),
    Locale('ar', 'JO'),
    Locale('ar', 'MA'),
    Locale('ar', 'SA'),
    Locale('as'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('de', 'AT'),
    Locale('de', 'CH'),
    Locale('el'),
    Locale('en', 'AU'),
    Locale('en', 'CA'),
    Locale('en', 'GB'),
    Locale('en', 'IE'),
    Locale('en', 'IN'),
    Locale('en', 'NZ'),
    Locale('en', 'SG'),
    Locale('en', 'US'),
    Locale('en', 'ZA'),
    Locale('es'),
    Locale('es', '419'),
    Locale('es', 'AR'),
    Locale('es', 'BO'),
    Locale('es', 'CL'),
    Locale('es', 'CO'),
    Locale('es', 'CR'),
    Locale('es', 'DO'),
    Locale('es', 'EC'),
    Locale('es', 'GT'),
    Locale('es', 'HN'),
    Locale('es', 'MX'),
    Locale('es', 'NI'),
    Locale('es', 'PA'),
    Locale('es', 'PE'),
    Locale('es', 'PR'),
    Locale('es', 'PY'),
    Locale('es', 'SV'),
    Locale('es', 'US'),
    Locale('es', 'UY'),
    Locale('es', 'VE'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('fr', 'CH'),
    Locale('gl'),
    Locale('gsw'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'TW'),
    Locale('zu'),
  ];

  String aboutDialogDescription(Object value) {
    return Intl.message(
        r'To see the source code for this app, please visit the $value.',
        locale: _localeName,
        name: 'aboutDialogDescription',
        desc: r'A description about how to view the source code for this app.',
        args: <Object>[value]);
  }

  String get aboutFlutterSamplesRepo {
    return Intl.message(r'Flutter samples Github repo',
        locale: _localeName,
        name: 'aboutFlutterSamplesRepo',
        desc: r'Represents a link to the Flutter samples github repository.');
  }

  String get bottomNavigationAccountTab {
    return Intl.message(r'Account',
        locale: _localeName,
        name: 'bottomNavigationAccountTab',
        desc: r'Title for Account tab of bottom navigation.');
  }

  String get bottomNavigationAlarmTab {
    return Intl.message(r'Alarm',
        locale: _localeName,
        name: 'bottomNavigationAlarmTab',
        desc: r'Title for Alarm tab of bottom navigation.');
  }

  String get bottomNavigationCalendarTab {
    return Intl.message(r'Calendar',
        locale: _localeName,
        name: 'bottomNavigationCalendarTab',
        desc: r'Title for Calendar tab of bottom navigation.');
  }

  String get bottomNavigationCameraTab {
    return Intl.message(r'Camera',
        locale: _localeName,
        name: 'bottomNavigationCameraTab',
        desc: r'Title for Camera tab of bottom navigation.');
  }

  String get bottomNavigationCommentsTab {
    return Intl.message(r'Comments',
        locale: _localeName,
        name: 'bottomNavigationCommentsTab',
        desc: r'Title for Comments tab of bottom navigation.');
  }

  String bottomNavigationContentPlaceholder(Object title) {
    return Intl.message(r'Placeholder for $title tab',
        locale: _localeName,
        name: 'bottomNavigationContentPlaceholder',
        desc:
            r'Accessibility label for the content placeholder in the bottom navigation demo',
        args: <Object>[title]);
  }

  String get buttonText {
    return Intl.message(r'BUTTON',
        locale: _localeName,
        name: 'buttonText',
        desc: r'Text for a generic button.');
  }

  String get buttonTextCreate {
    return Intl.message(r'Create',
        locale: _localeName,
        name: 'buttonTextCreate',
        desc: r'Tooltip text for a create button.');
  }

  String get colorsAmber {
    return Intl.message(r'AMBER',
        locale: _localeName,
        name: 'colorsAmber',
        desc: r'Tab title for the color amber.');
  }

  String get colorsBlue {
    return Intl.message(r'BLUE',
        locale: _localeName,
        name: 'colorsBlue',
        desc: r'Tab title for the color blue.');
  }

  String get colorsBlueGrey {
    return Intl.message(r'BLUE GREY',
        locale: _localeName,
        name: 'colorsBlueGrey',
        desc: r'Tab title for the color blue grey.');
  }

  String get colorsBrown {
    return Intl.message(r'BROWN',
        locale: _localeName,
        name: 'colorsBrown',
        desc: r'Tab title for the color brown.');
  }

  String get colorsCyan {
    return Intl.message(r'CYAN',
        locale: _localeName,
        name: 'colorsCyan',
        desc: r'Tab title for the color cyan.');
  }

  String get colorsDeepOrange {
    return Intl.message(r'DEEP ORANGE',
        locale: _localeName,
        name: 'colorsDeepOrange',
        desc: r'Tab title for the color deep orange.');
  }

  String get colorsDeepPurple {
    return Intl.message(r'DEEP PURPLE',
        locale: _localeName,
        name: 'colorsDeepPurple',
        desc: r'Tab title for the color deep purple.');
  }

  String get colorsGreen {
    return Intl.message(r'GREEN',
        locale: _localeName,
        name: 'colorsGreen',
        desc: r'Tab title for the color green.');
  }

  String get colorsGrey {
    return Intl.message(r'GREY',
        locale: _localeName,
        name: 'colorsGrey',
        desc: r'Tab title for the color grey.');
  }

  String get colorsIndigo {
    return Intl.message(r'INDIGO',
        locale: _localeName,
        name: 'colorsIndigo',
        desc: r'Tab title for the color indigo.');
  }

  String get colorsLightBlue {
    return Intl.message(r'LIGHT BLUE',
        locale: _localeName,
        name: 'colorsLightBlue',
        desc: r'Tab title for the color light blue.');
  }

  String get colorsLightGreen {
    return Intl.message(r'LIGHT GREEN',
        locale: _localeName,
        name: 'colorsLightGreen',
        desc: r'Tab title for the color light green.');
  }

  String get colorsLime {
    return Intl.message(r'LIME',
        locale: _localeName,
        name: 'colorsLime',
        desc: r'Tab title for the color lime.');
  }

  String get colorsOrange {
    return Intl.message(r'ORANGE',
        locale: _localeName,
        name: 'colorsOrange',
        desc: r'Tab title for the color orange.');
  }

  String get colorsPink {
    return Intl.message(r'PINK',
        locale: _localeName,
        name: 'colorsPink',
        desc: r'Tab title for the color pink.');
  }

  String get colorsPurple {
    return Intl.message(r'PURPLE',
        locale: _localeName,
        name: 'colorsPurple',
        desc: r'Tab title for the color purple.');
  }

  String get colorsRed {
    return Intl.message(r'RED',
        locale: _localeName,
        name: 'colorsRed',
        desc: r'Tab title for the color red.');
  }

  String get colorsTeal {
    return Intl.message(r'TEAL',
        locale: _localeName,
        name: 'colorsTeal',
        desc: r'Tab title for the color teal.');
  }

  String get colorsYellow {
    return Intl.message(r'YELLOW',
        locale: _localeName,
        name: 'colorsYellow',
        desc: r'Tab title for the color yellow.');
  }

  String get craneDescription {
    return Intl.message(r'A personalized travel app',
        locale: _localeName,
        name: 'craneDescription',
        desc: r'Study description for Crane.');
  }

  String get cupertinoAlertAllow {
    return Intl.message(r'Allow',
        locale: _localeName,
        name: 'cupertinoAlertAllow',
        desc: r'iOS-style alert allow option.');
  }

  String get cupertinoAlertApplePie {
    return Intl.message(r'Apple Pie',
        locale: _localeName,
        name: 'cupertinoAlertApplePie',
        desc: r'iOS-style alert apple pie option.');
  }

  String get cupertinoAlertCancel {
    return Intl.message(r'Cancel',
        locale: _localeName,
        name: 'cupertinoAlertCancel',
        desc: r'iOS-style alert cancel option.');
  }

  String get cupertinoAlertCheesecake {
    return Intl.message(r'Cheesecake',
        locale: _localeName,
        name: 'cupertinoAlertCheesecake',
        desc: r'iOS-style alert cheesecake option.');
  }

  String get cupertinoAlertChocolateBrownie {
    return Intl.message(r'Chocolate Brownie',
        locale: _localeName,
        name: 'cupertinoAlertChocolateBrownie',
        desc: r'iOS-style alert chocolate brownie option.');
  }

  String get cupertinoAlertDessertDescription {
    return Intl.message(
        r'Please select your favorite type of dessert from the list below. Your selection will be used to customize the suggested list of eateries in your area.',
        locale: _localeName,
        name: 'cupertinoAlertDessertDescription',
        desc: r'iOS-style alert description for selecting favorite dessert.');
  }

  String get cupertinoAlertDiscard {
    return Intl.message(r'Discard',
        locale: _localeName,
        name: 'cupertinoAlertDiscard',
        desc: r'iOS-style alert discard option.');
  }

  String get cupertinoAlertDontAllow {
    return Intl.message(r'Don' "'" r't Allow',
        locale: _localeName,
        name: 'cupertinoAlertDontAllow',
        desc: r'iOS-style alert don' "'" r't allow option.');
  }

  String get cupertinoAlertFavoriteDessert {
    return Intl.message(r'Select Favorite Dessert',
        locale: _localeName,
        name: 'cupertinoAlertFavoriteDessert',
        desc: r'iOS-style alert title for selecting favorite dessert.');
  }

  String get cupertinoAlertLocationDescription {
    return Intl.message(
        r'Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.',
        locale: _localeName,
        name: 'cupertinoAlertLocationDescription',
        desc: r'iOS-style alert description for location permission.');
  }

  String get cupertinoAlertLocationTitle {
    return Intl.message(
        r'Allow "Maps" to access your location while you are using the app?',
        locale: _localeName,
        name: 'cupertinoAlertLocationTitle',
        desc: r'iOS-style alert title for location permission.');
  }

  String get cupertinoAlertTiramisu {
    return Intl.message(r'Tiramisu',
        locale: _localeName,
        name: 'cupertinoAlertTiramisu',
        desc: r'iOS-style alert tiramisu option.');
  }

  String get cupertinoButton {
    return Intl.message(r'Button',
        locale: _localeName,
        name: 'cupertinoButton',
        desc: r'Button text for a generic iOS-style button.');
  }

  String get cupertinoButtonWithBackground {
    return Intl.message(r'With Background',
        locale: _localeName,
        name: 'cupertinoButtonWithBackground',
        desc: r'Button text for a iOS-style button with a filled background.');
  }

  String get cupertinoShowAlert {
    return Intl.message(r'Show Alert',
        locale: _localeName,
        name: 'cupertinoShowAlert',
        desc: r'Button text to show iOS-style alert.');
  }

  String get demoAlertDialogDescription {
    return Intl.message(
        r'An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions.',
        locale: _localeName,
        name: 'demoAlertDialogDescription',
        desc: r'Description for the alert dialog component demo.');
  }

  String get demoAlertDialogTitle {
    return Intl.message(r'Alert',
        locale: _localeName,
        name: 'demoAlertDialogTitle',
        desc: r'Title for the alert dialog component demo.');
  }

  String get demoAlertTitleDialogTitle {
    return Intl.message(r'Alert With Title',
        locale: _localeName,
        name: 'demoAlertTitleDialogTitle',
        desc: r'Title for the alert dialog with title component demo.');
  }

  String get demoBottomNavigationDescription {
    return Intl.message(
        r'Bottom navigation bars display three to five destinations at the bottom of a screen. Each destination is represented by an icon and an optional text label. When a bottom navigation icon is tapped, the user is taken to the top-level navigation destination associated with that icon.',
        locale: _localeName,
        name: 'demoBottomNavigationDescription',
        desc:
            r'Description for the material bottom navigation component demo.');
  }

  String get demoBottomNavigationPersistentLabels {
    return Intl.message(r'Persistent labels',
        locale: _localeName,
        name: 'demoBottomNavigationPersistentLabels',
        desc: r'Option title for bottom navigation with persistent labels.');
  }

  String get demoBottomNavigationSelectedLabel {
    return Intl.message(r'Selected label',
        locale: _localeName,
        name: 'demoBottomNavigationSelectedLabel',
        desc:
            r'Option title for bottom navigation with only a selected label.');
  }

  String get demoBottomNavigationSubtitle {
    return Intl.message(r'Bottom navigation with cross-fading views',
        locale: _localeName,
        name: 'demoBottomNavigationSubtitle',
        desc: r'Subtitle for the material bottom navigation component demo.');
  }

  String get demoBottomNavigationTitle {
    return Intl.message(r'Bottom navigation',
        locale: _localeName,
        name: 'demoBottomNavigationTitle',
        desc: r'Title for the material bottom navigation component demo.');
  }

  String get demoBottomSheetAddLabel {
    return Intl.message(r'Add',
        locale: _localeName,
        name: 'demoBottomSheetAddLabel',
        desc: r'Semantic label for add icon.');
  }

  String get demoBottomSheetButtonText {
    return Intl.message(r'SHOW BOTTOM SHEET',
        locale: _localeName,
        name: 'demoBottomSheetButtonText',
        desc: r'Button text to show bottom sheet.');
  }

  String get demoBottomSheetHeader {
    return Intl.message(r'Header',
        locale: _localeName,
        name: 'demoBottomSheetHeader',
        desc: r'Generic header placeholder.');
  }

  String demoBottomSheetItem(Object value) {
    return Intl.message(r'Item $value',
        locale: _localeName,
        name: 'demoBottomSheetItem',
        desc: r'Generic item placeholder.',
        args: <Object>[value]);
  }

  String get demoBottomSheetModalDescription {
    return Intl.message(
        r'A modal bottom sheet is an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app.',
        locale: _localeName,
        name: 'demoBottomSheetModalDescription',
        desc: r'Description for modal bottom sheet demo.');
  }

  String get demoBottomSheetModalTitle {
    return Intl.message(r'Modal bottom sheet',
        locale: _localeName,
        name: 'demoBottomSheetModalTitle',
        desc: r'Title for modal bottom sheet demo.');
  }

  String get demoBottomSheetPersistentDescription {
    return Intl.message(
        r'A persistent bottom sheet shows information that supplements the primary content of the app. A persistent bottom sheet remains visible even when the user interacts with other parts of the app.',
        locale: _localeName,
        name: 'demoBottomSheetPersistentDescription',
        desc: r'Description for persistent bottom sheet demo.');
  }

  String get demoBottomSheetPersistentTitle {
    return Intl.message(r'Persistent bottom sheet',
        locale: _localeName,
        name: 'demoBottomSheetPersistentTitle',
        desc: r'Title for persistent bottom sheet demo.');
  }

  String get demoBottomSheetSubtitle {
    return Intl.message(r'Persistent and modal bottom sheets',
        locale: _localeName,
        name: 'demoBottomSheetSubtitle',
        desc: r'Description for bottom sheet demo.');
  }

  String get demoBottomSheetTitle {
    return Intl.message(r'Bottom sheet',
        locale: _localeName,
        name: 'demoBottomSheetTitle',
        desc: r'Title for bottom sheet demo.');
  }

  String get demoBottomTextFieldsTitle {
    return Intl.message(r'Text fields',
        locale: _localeName,
        name: 'demoBottomTextFieldsTitle',
        desc: r'Title for text fields demo.');
  }

  String get demoButtonSubtitle {
    return Intl.message(r'Flat, raised, outline, and more',
        locale: _localeName,
        name: 'demoButtonSubtitle',
        desc: r'Subtitle for the material buttons component demo.');
  }

  String get demoButtonTitle {
    return Intl.message(r'Buttons',
        locale: _localeName,
        name: 'demoButtonTitle',
        desc: r'Title for the material buttons component demo.');
  }

  String get demoCodeTooltip {
    return Intl.message(r'Code Sample',
        locale: _localeName,
        name: 'demoCodeTooltip',
        desc: r'Tooltip for code sample button in a demo.');
  }

  String get demoColorsDescription {
    return Intl.message(
        r'Color and color swatch constants which represent Material Design'
        "'"
        r's color palette.',
        locale: _localeName,
        name: 'demoColorsDescription',
        desc: r'Description for the colors demo.');
  }

  String get demoColorsSubtitle {
    return Intl.message(r'All of the predefined colors',
        locale: _localeName,
        name: 'demoColorsSubtitle',
        desc: r'Subtitle for the colors demo.');
  }

  String get demoColorsTitle {
    return Intl.message(r'Colors',
        locale: _localeName,
        name: 'demoColorsTitle',
        desc: r'Title for the colors demo.');
  }

  String get demoCupertinoActionSheetDescription {
    return Intl.message(
        r'An action sheet is a specific style of alert that presents the user with a set of two or more choices related to the current context. An action sheet can have a title, an additional message, and a list of actions.',
        locale: _localeName,
        name: 'demoCupertinoActionSheetDescription',
        desc: r'Description for the cupertino action sheet component demo.');
  }

  String get demoCupertinoActionSheetTitle {
    return Intl.message(r'Action Sheet',
        locale: _localeName,
        name: 'demoCupertinoActionSheetTitle',
        desc: r'Title for the cupertino action sheet component demo.');
  }

  String get demoCupertinoAlertButtonsOnlyTitle {
    return Intl.message(r'Alert Buttons Only',
        locale: _localeName,
        name: 'demoCupertinoAlertButtonsOnlyTitle',
        desc: r'Title for the cupertino alert buttons only component demo.');
  }

  String get demoCupertinoAlertButtonsTitle {
    return Intl.message(r'Alert With Buttons',
        locale: _localeName,
        name: 'demoCupertinoAlertButtonsTitle',
        desc: r'Title for the cupertino alert with buttons component demo.');
  }

  String get demoCupertinoAlertDescription {
    return Intl.message(
        r'An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title, optional content, and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.',
        locale: _localeName,
        name: 'demoCupertinoAlertDescription',
        desc: r'Description for the cupertino alert component demo.');
  }

  String get demoCupertinoAlertTitle {
    return Intl.message(r'Alert',
        locale: _localeName,
        name: 'demoCupertinoAlertTitle',
        desc: r'Title for the cupertino alert component demo.');
  }

  String get demoCupertinoAlertWithTitleTitle {
    return Intl.message(r'Alert With Title',
        locale: _localeName,
        name: 'demoCupertinoAlertWithTitleTitle',
        desc: r'Title for the cupertino alert with title component demo.');
  }

  String get demoCupertinoAlertsSubtitle {
    return Intl.message(r'iOS-style alert dialogs',
        locale: _localeName,
        name: 'demoCupertinoAlertsSubtitle',
        desc: r'Subtitle for the cupertino alerts component demo.');
  }

  String get demoCupertinoAlertsTitle {
    return Intl.message(r'Alerts',
        locale: _localeName,
        name: 'demoCupertinoAlertsTitle',
        desc: r'Title for the cupertino alerts component demo.');
  }

  String get demoCupertinoButtonsDescription {
    return Intl.message(
        r'An iOS-style button. It takes in text and/or an icon that fades out and in on touch. May optionally have a background.',
        locale: _localeName,
        name: 'demoCupertinoButtonsDescription',
        desc: r'Description for the cupertino buttons component demo.');
  }

  String get demoCupertinoButtonsSubtitle {
    return Intl.message(r'iOS-style buttons',
        locale: _localeName,
        name: 'demoCupertinoButtonsSubtitle',
        desc: r'Subtitle for the cupertino buttons component demo.');
  }

  String get demoCupertinoButtonsTitle {
    return Intl.message(r'Buttons',
        locale: _localeName,
        name: 'demoCupertinoButtonsTitle',
        desc: r'Title for the cupertino buttons component demo.');
  }

  String get demoDialogSubtitle {
    return Intl.message(r'Simple, alert, and fullscreen',
        locale: _localeName,
        name: 'demoDialogSubtitle',
        desc: r'Subtitle for the material dialog component demo.');
  }

  String get demoDialogTitle {
    return Intl.message(r'Dialogs',
        locale: _localeName,
        name: 'demoDialogTitle',
        desc: r'Title for the material buttons component demo.');
  }

  String get demoDocumentationTooltip {
    return Intl.message(r'API Documentation',
        locale: _localeName,
        name: 'demoDocumentationTooltip',
        desc: r'Tooltip for API documentation button in a demo.');
  }

  String get demoFlatButtonDescription {
    return Intl.message(
        r'A flat button displays an ink splash on press but does not lift. Use flat buttons on toolbars, in dialogs and inline with padding',
        locale: _localeName,
        name: 'demoFlatButtonDescription',
        desc: r'Description for the flat button component demo.');
  }

  String get demoFlatButtonTitle {
    return Intl.message(r'Flat Button',
        locale: _localeName,
        name: 'demoFlatButtonTitle',
        desc: r'Title for the flat button component demo.');
  }

  String get demoFloatingButtonDescription {
    return Intl.message(
        r'A floating action button is a circular icon button that hovers over content to promote a primary action in the application.',
        locale: _localeName,
        name: 'demoFloatingButtonDescription',
        desc: r'Description for the floating action button component demo.');
  }

  String get demoFloatingButtonTitle {
    return Intl.message(r'Floating Action Button',
        locale: _localeName,
        name: 'demoFloatingButtonTitle',
        desc: r'Title for the floating action button component demo.');
  }

  String get demoFullscreenDialogDescription {
    return Intl.message(
        r'The fullscreenDialog property specifies whether the incoming page is a fullscreen modal dialog',
        locale: _localeName,
        name: 'demoFullscreenDialogDescription',
        desc: r'Description for the fullscreen dialog component demo.');
  }

  String get demoFullscreenDialogTitle {
    return Intl.message(r'Fullscreen',
        locale: _localeName,
        name: 'demoFullscreenDialogTitle',
        desc: r'Title for the fullscreen dialog component demo.');
  }

  String get demoFullscreenTooltip {
    return Intl.message(r'Full Screen',
        locale: _localeName,
        name: 'demoFullscreenTooltip',
        desc: r'Tooltip for Full Screen button in a demo.');
  }

  String get demoInfoTooltip {
    return Intl.message(r'Info',
        locale: _localeName,
        name: 'demoInfoTooltip',
        desc: r'Tooltip for info button in a demo.');
  }

  String get demoInvalidURL {
    return Intl.message(r'Couldn' "'" r't display URL:',
        locale: _localeName,
        name: 'demoInvalidURL',
        desc: r'Error message when opening the URL for a demo.');
  }

  String get demoOptionsTooltip {
    return Intl.message(r'Options',
        locale: _localeName,
        name: 'demoOptionsTooltip',
        desc: r'Tooltip for options button in a demo.');
  }

  String get demoOutlineButtonDescription {
    return Intl.message(
        r'Outline buttons become opaque and elevate when pressed. They are often paired with raised buttons to indicate an alternative, secondary action.',
        locale: _localeName,
        name: 'demoOutlineButtonDescription',
        desc: r'Description for the outline button component demo.');
  }

  String get demoOutlineButtonTitle {
    return Intl.message(r'Outline Button',
        locale: _localeName,
        name: 'demoOutlineButtonTitle',
        desc: r'Title for the outline button component demo.');
  }

  String get demoRaisedButtonDescription {
    return Intl.message(
        r'Raised buttons add dimension to mostly flat layouts. They emphasize functions on busy or wide spaces.',
        locale: _localeName,
        name: 'demoRaisedButtonDescription',
        desc: r'Description for the raised button component demo.');
  }

  String get demoRaisedButtonTitle {
    return Intl.message(r'Raised Button',
        locale: _localeName,
        name: 'demoRaisedButtonTitle',
        desc: r'Title for the raised button component demo.');
  }

  String get demoSimpleDialogDescription {
    return Intl.message(
        r'A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices.',
        locale: _localeName,
        name: 'demoSimpleDialogDescription',
        desc: r'Description for the simple dialog component demo.');
  }

  String get demoSimpleDialogTitle {
    return Intl.message(r'Simple',
        locale: _localeName,
        name: 'demoSimpleDialogTitle',
        desc: r'Title for the simple dialog component demo.');
  }

  String get demoTextFieldDescription {
    return Intl.message(
        r'Text fields allow users to enter text into a UI. They typically appear in forms and dialogs.',
        locale: _localeName,
        name: 'demoTextFieldDescription',
        desc: r'Description for text fields demo.');
  }

  String get demoTextFieldEmail {
    return Intl.message(r'E-mail',
        locale: _localeName,
        name: 'demoTextFieldEmail',
        desc: r'The label for an email address input field');
  }

  String get demoTextFieldEnterPassword {
    return Intl.message(r'Please enter a password.',
        locale: _localeName,
        name: 'demoTextFieldEnterPassword',
        desc: r'Error that shows up if password is not given.');
  }

  String get demoTextFieldEnterUSPhoneNumber {
    return Intl.message(r'(###) ###-#### - Enter a US phone number.',
        locale: _localeName,
        name: 'demoTextFieldEnterUSPhoneNumber',
        desc:
            r'Error that shows up if non-valid non-US phone number is given.');
  }

  String get demoTextFieldFormErrors {
    return Intl.message(r'Please fix the errors in red before submitting.',
        locale: _localeName,
        name: 'demoTextFieldFormErrors',
        desc: r'Text that shows up on form errors.');
  }

  String get demoTextFieldHidePasswordLabel {
    return Intl.message(r'Hide password',
        locale: _localeName,
        name: 'demoTextFieldHidePasswordLabel',
        desc: r'Label for hide password icon.');
  }

  String get demoTextFieldKeepItShort {
    return Intl.message(r'Keep it short, this is just a demo.',
        locale: _localeName,
        name: 'demoTextFieldKeepItShort',
        desc: r'Helper text for biography/life story input field.');
  }

  String get demoTextFieldLifeStory {
    return Intl.message(r'Life story',
        locale: _localeName,
        name: 'demoTextFieldLifeStory',
        desc: r'The label for for biography/life story input field.');
  }

  String get demoTextFieldNameField {
    return Intl.message(r'Name*',
        locale: _localeName,
        name: 'demoTextFieldNameField',
        desc:
            r'The label for a name input field that is required (hence the star).');
  }

  String demoTextFieldNameHasPhoneNumber(Object name, Object phoneNumber) {
    return Intl.message(r'$name phone number is $phoneNumber',
        locale: _localeName,
        name: 'demoTextFieldNameHasPhoneNumber',
        desc:
            r'Text that shows up when valid phone number and name is submitted in form.',
        args: <Object>[name, phoneNumber]);
  }

  String get demoTextFieldNameRequired {
    return Intl.message(r'Name is required.',
        locale: _localeName,
        name: 'demoTextFieldNameRequired',
        desc:
            r'Shows up as submission error if name is not given in the form.');
  }

  String get demoTextFieldNoMoreThan {
    return Intl.message(r'No more than 8 characters.',
        locale: _localeName,
        name: 'demoTextFieldNoMoreThan',
        desc: r'Helper text for password input field.');
  }

  String get demoTextFieldOnlyAlphabeticalChars {
    return Intl.message(r'Please enter only alphabetical characters.',
        locale: _localeName,
        name: 'demoTextFieldOnlyAlphabeticalChars',
        desc: r'Error that shows if non-alphabetical characters are given.');
  }

  String get demoTextFieldPassword {
    return Intl.message(r'Password*',
        locale: _localeName,
        name: 'demoTextFieldPassword',
        desc:
            r'Label for password input field, that is required (hence the star).');
  }

  String get demoTextFieldPasswordsDoNotMatch {
    return Intl.message(r'The passwords don' "'" r't match',
        locale: _localeName,
        name: 'demoTextFieldPasswordsDoNotMatch',
        desc:
            r'Error that shows up, if the re-typed password does not match the already given password.');
  }

  String get demoTextFieldPhoneNumber {
    return Intl.message(r'Phone number*',
        locale: _localeName,
        name: 'demoTextFieldPhoneNumber',
        desc:
            r'The label for a phone number input field that is required (hence the star).');
  }

  String get demoTextFieldRequiredField {
    return Intl.message(r'* indicates required field',
        locale: _localeName,
        name: 'demoTextFieldRequiredField',
        desc:
            r'Helper text to indicate that * means that it is a required field.');
  }

  String get demoTextFieldRetypePassword {
    return Intl.message(r'Re-type password*',
        locale: _localeName,
        name: 'demoTextFieldRetypePassword',
        desc: r'Label for repeat password input field.');
  }

  String get demoTextFieldSalary {
    return Intl.message(r'Salary',
        locale: _localeName,
        name: 'demoTextFieldSalary',
        desc: r'The label for salary input field.');
  }

  String get demoTextFieldShowPasswordLabel {
    return Intl.message(r'Show password',
        locale: _localeName,
        name: 'demoTextFieldShowPasswordLabel',
        desc: r'Label for show password icon.');
  }

  String get demoTextFieldSubmit {
    return Intl.message(r'SUBMIT',
        locale: _localeName,
        name: 'demoTextFieldSubmit',
        desc: r'The submit button text for form.');
  }

  String get demoTextFieldSubtitle {
    return Intl.message(r'Single line of editable text and numbers',
        locale: _localeName,
        name: 'demoTextFieldSubtitle',
        desc: r'Description for text fields demo.');
  }

  String get demoTextFieldTellUsAboutYourself {
    return Intl.message(
        r'Tell us about yourself (e.g., write down what you do or what hobbies you have)',
        locale: _localeName,
        name: 'demoTextFieldTellUsAboutYourself',
        desc: r'The placeholder text for biography/life story input field.');
  }

  String get demoTextFieldTitle {
    return Intl.message(r'Text fields',
        locale: _localeName,
        name: 'demoTextFieldTitle',
        desc: r'Title for text fields demo.');
  }

  String get demoTextFieldUSD {
    return Intl.message(r'USD',
        locale: _localeName,
        name: 'demoTextFieldUSD',
        desc: r'US currency, used as suffix in input field for salary.');
  }

  String get demoTextFieldWhatDoPeopleCallYou {
    return Intl.message(r'What do people call you?',
        locale: _localeName,
        name: 'demoTextFieldWhatDoPeopleCallYou',
        desc: r'Placeholder for name field in form.');
  }

  String get demoTextFieldWhereCanWeReachYou {
    return Intl.message(r'Where can we reach you?',
        locale: _localeName,
        name: 'demoTextFieldWhereCanWeReachYou',
        desc: r'Placeholder for when entering a phone number in a form.');
  }

  String get demoTextFieldYourEmailAddress {
    return Intl.message(r'Your email address',
        locale: _localeName,
        name: 'demoTextFieldYourEmailAddress',
        desc: r'The label for an email address input field.');
  }

  String get demoToggleButtonDescription {
    return Intl.message(
        r'Toggle buttons can be used to group related options. To emphasize groups of related toggle buttons, a group should share a common container',
        locale: _localeName,
        name: 'demoToggleButtonDescription',
        desc: r'Description for the toggle buttons component demo.');
  }

  String get demoToggleButtonTitle {
    return Intl.message(r'Toggle Buttons',
        locale: _localeName,
        name: 'demoToggleButtonTitle',
        desc: r'Title for the toggle buttons component demo.');
  }

  String get demoTypographyDescription {
    return Intl.message(
        r'Definitions for the various typographical styles found in Material Design.',
        locale: _localeName,
        name: 'demoTypographyDescription',
        desc: r'Description for the typography demo.');
  }

  String get demoTypographySubtitle {
    return Intl.message(r'All of the predefined text styles',
        locale: _localeName,
        name: 'demoTypographySubtitle',
        desc: r'Subtitle for the typography demo.');
  }

  String get demoTypographyTitle {
    return Intl.message(r'Typography',
        locale: _localeName,
        name: 'demoTypographyTitle',
        desc: r'Title for the typography demo.');
  }

  String get dialogAddAccount {
    return Intl.message(r'Add account',
        locale: _localeName,
        name: 'dialogAddAccount',
        desc: r'Alert dialog option for adding an account.');
  }

  String get dialogAgree {
    return Intl.message(r'AGREE',
        locale: _localeName,
        name: 'dialogAgree',
        desc: r'Alert dialog agree option.');
  }

  String get dialogCancel {
    return Intl.message(r'CANCEL',
        locale: _localeName,
        name: 'dialogCancel',
        desc: r'Alert dialog cancel option.');
  }

  String get dialogDisagree {
    return Intl.message(r'DISAGREE',
        locale: _localeName,
        name: 'dialogDisagree',
        desc: r'Alert dialog disagree option.');
  }

  String get dialogDiscard {
    return Intl.message(r'DISCARD',
        locale: _localeName,
        name: 'dialogDiscard',
        desc: r'Alert dialog discard option.');
  }

  String get dialogDiscardTitle {
    return Intl.message(r'Discard draft?',
        locale: _localeName,
        name: 'dialogDiscardTitle',
        desc: r'Alert dialog message to discard draft.');
  }

  String get dialogFullscreenDescription {
    return Intl.message(r'A full screen dialog demo',
        locale: _localeName,
        name: 'dialogFullscreenDescription',
        desc: r'Description for full screen dialog demo.');
  }

  String get dialogFullscreenSave {
    return Intl.message(r'SAVE',
        locale: _localeName,
        name: 'dialogFullscreenSave',
        desc: r'Save button for full screen dialog demo.');
  }

  String get dialogFullscreenTitle {
    return Intl.message(r'Full Screen Dialog',
        locale: _localeName,
        name: 'dialogFullscreenTitle',
        desc: r'Title for full screen dialog demo.');
  }

  String get dialogLocationDescription {
    return Intl.message(
        r'Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running.',
        locale: _localeName,
        name: 'dialogLocationDescription',
        desc: r'Alert dialog description to use location services.');
  }

  String get dialogLocationTitle {
    return Intl.message(r'Use Google' "'" r's location service?',
        locale: _localeName,
        name: 'dialogLocationTitle',
        desc: r'Alert dialog title to use location services.');
  }

  String dialogSelectedOption(Object value) {
    return Intl.message(r'You selected: "$value"',
        locale: _localeName,
        name: 'dialogSelectedOption',
        desc: r'Message displayed after an option is selected from a dialog',
        args: <Object>[value]);
  }

  String get dialogSetBackup {
    return Intl.message(r'Set backup account',
        locale: _localeName,
        name: 'dialogSetBackup',
        desc: r'Alert dialog title for setting a backup account.');
  }

  String get dialogShow {
    return Intl.message(r'SHOW DIALOG',
        locale: _localeName,
        name: 'dialogShow',
        desc: r'Button text to display a dialog.');
  }

  String get homeCategoryReference {
    return Intl.message(r'REFERENCE STYLES & MEDIA',
        locale: _localeName,
        name: 'homeCategoryReference',
        desc: r'Category title on home screen for reference styles & media.');
  }

  String get homeHeaderCategories {
    return Intl.message(r'Categories',
        locale: _localeName,
        name: 'homeHeaderCategories',
        desc: r'Header title on home screen for Categories section.');
  }

  String get homeHeaderGallery {
    return Intl.message(r'Gallery',
        locale: _localeName,
        name: 'homeHeaderGallery',
        desc: r'Header title on home screen for Gallery section.');
  }

  String get rallyAccountDataCarSavings {
    return Intl.message(r'Car Savings',
        locale: _localeName,
        name: 'rallyAccountDataCarSavings',
        desc: r'Name for account made up by user.');
  }

  String get rallyAccountDataChecking {
    return Intl.message(r'Checking',
        locale: _localeName,
        name: 'rallyAccountDataChecking',
        desc: r'Name for account made up by user.');
  }

  String get rallyAccountDataHomeSavings {
    return Intl.message(r'Home Savings',
        locale: _localeName,
        name: 'rallyAccountDataHomeSavings',
        desc: r'Name for account made up by user.');
  }

  String get rallyAccountDataVacation {
    return Intl.message(r'Vacation',
        locale: _localeName,
        name: 'rallyAccountDataVacation',
        desc: r'Name for account made up by user.');
  }

  String get rallyAccountDetailDataAccountOwner {
    return Intl.message(r'Account Owner',
        locale: _localeName,
        name: 'rallyAccountDetailDataAccountOwner',
        desc:
            r'Title for an account detail. Below the name of the account owner will be displayed.');
  }

  String get rallyAccountDetailDataAnnualPercentageYield {
    return Intl.message(r'Annual Percentage Yield',
        locale: _localeName,
        name: 'rallyAccountDetailDataAnnualPercentageYield',
        desc:
            r'Title for account statistics. Below a percentage such as 0.10% will be displayed.');
  }

  String get rallyAccountDetailDataInterestPaidLastYear {
    return Intl.message(r'Interest Paid Last Year',
        locale: _localeName,
        name: 'rallyAccountDetailDataInterestPaidLastYear',
        desc:
            r'Title for account statistics. Below a dollar amount such as $100 will be displayed.');
  }

  String get rallyAccountDetailDataInterestRate {
    return Intl.message(r'Interest Rate',
        locale: _localeName,
        name: 'rallyAccountDetailDataInterestRate',
        desc:
            r'Title for account statistics. Below a dollar amount such as $100 will be displayed.');
  }

  String get rallyAccountDetailDataInterestYtd {
    return Intl.message(r'Interest YTD',
        locale: _localeName,
        name: 'rallyAccountDetailDataInterestYtd',
        desc:
            r'Title for account statistics. Below a dollar amount such as $100 will be displayed.');
  }

  String get rallyAccountDetailDataNextStatement {
    return Intl.message(r'Next Statement',
        locale: _localeName,
        name: 'rallyAccountDetailDataNextStatement',
        desc:
            r'Title for an account detail. Below a date for when the next account statement is released.');
  }

  String get rallyAccountTotal {
    return Intl.message(r'Total',
        locale: _localeName,
        name: 'rallyAccountTotal',
        desc: r'Title for '
            "'"
            r'total account value'
            "'"
            r' overview page, a dollar value is displayed next to it.');
  }

  String get rallyAccounts {
    return Intl.message(r'Accounts',
        locale: _localeName,
        name: 'rallyAccounts',
        desc: r'Link text for accounts page.');
  }

  String get rallyAlerts {
    return Intl.message(r'Alerts',
        locale: _localeName,
        name: 'rallyAlerts',
        desc: r'Title for alerts part of overview page.');
  }

  String rallyAlertsMessageATMFees(Object amount) {
    return Intl.message(r'You’ve spent $amount in ATM fees this month',
        locale: _localeName,
        name: 'rallyAlertsMessageATMFees',
        desc:
            r'Alert message shown when for example, the user has spent $24 in ATM fees this month.',
        args: <Object>[amount]);
  }

  String rallyAlertsMessageCheckingAccount(Object percent) {
    return Intl.message(
        r'Good work! Your checking account is $percent higher than last month.',
        locale: _localeName,
        name: 'rallyAlertsMessageCheckingAccount',
        desc:
            r'Alert message shown when for example, the checking account is 1% higher than last month.',
        args: <Object>[percent]);
  }

  String rallyAlertsMessageHeadsUpShopping(Object percent) {
    return Intl.message(
        r'Heads up, you’ve used up $percent of your Shopping budget for this month.',
        locale: _localeName,
        name: 'rallyAlertsMessageHeadsUpShopping',
        desc: r'Alert message shown when for example, user has used more than 90% of their shopping budget.',
        args: <Object>[percent]);
  }

  String rallyAlertsMessageSpentOnRestaurants(Object amount) {
    return Intl.message(r'You’ve spent $amount on Restaurants this week.',
        locale: _localeName,
        name: 'rallyAlertsMessageSpentOnRestaurants',
        desc:
            r'Alert message shown when for example, user has spent $120 on Restaurants this week.',
        args: <Object>[amount]);
  }

  String get rallyBills {
    return Intl.message(r'Bills',
        locale: _localeName,
        name: 'rallyBills',
        desc: r'Link text for bills page.');
  }

  String get rallyBillsDue {
    return Intl.message(r'Due',
        locale: _localeName,
        name: 'rallyBillsDue',
        desc: r'Title for '
            "'"
            r'bills due'
            "'"
            r' page, a dollar value is displayed next to it.');
  }

  String get rallyBudgetCategoryClothing {
    return Intl.message(r'Clothing',
        locale: _localeName,
        name: 'rallyBudgetCategoryClothing',
        desc: r'Category for budget, to sort expenses / bills in.');
  }

  String get rallyBudgetCategoryCoffeeShops {
    return Intl.message(r'Coffee Shops',
        locale: _localeName,
        name: 'rallyBudgetCategoryCoffeeShops',
        desc: r'Category for budget, to sort expenses / bills in.');
  }

  String get rallyBudgetCategoryGroceries {
    return Intl.message(r'Groceries',
        locale: _localeName,
        name: 'rallyBudgetCategoryGroceries',
        desc: r'Category for budget, to sort expenses / bills in.');
  }

  String get rallyBudgetCategoryRestaurants {
    return Intl.message(r'Restaurants',
        locale: _localeName,
        name: 'rallyBudgetCategoryRestaurants',
        desc: r'Category for budget, to sort expenses / bills in.');
  }

  String get rallyBudgetLeft {
    return Intl.message(r'Left',
        locale: _localeName,
        name: 'rallyBudgetLeft',
        desc: r'Title for '
            "'"
            r'budget left'
            "'"
            r' page, a dollar value is displayed next to it.');
  }

  String get rallyBudgets {
    return Intl.message(r'Budgets',
        locale: _localeName,
        name: 'rallyBudgets',
        desc: r'Link text for budgets page.');
  }

  String get rallyDescription {
    return Intl.message(r'A personal finance app',
        locale: _localeName,
        name: 'rallyDescription',
        desc: r'Study description for Rally.');
  }

  String get rallyFinanceLeft {
    return Intl.message(r' LEFT',
        locale: _localeName,
        name: 'rallyFinanceLeft',
        desc: r'Displayed as '
            "'"
            r'dollar amount left'
            "'"
            r', for example $46.70 LEFT, for a budget category.');
  }

  String get rallyLoginButtonLogin {
    return Intl.message(r'LOGIN',
        locale: _localeName,
        name: 'rallyLoginButtonLogin',
        desc: r'Text for login button.');
  }

  String get rallyLoginLabelLogin {
    return Intl.message(r'Login',
        locale: _localeName,
        name: 'rallyLoginLabelLogin',
        desc: r'The label text to login.');
  }

  String get rallyLoginLoginToRally {
    return Intl.message(r'Login to Rally',
        locale: _localeName,
        name: 'rallyLoginLoginToRally',
        desc:
            r'Title for login page for the Rally app (Rally does not need to be translated as it is a product name).');
  }

  String get rallyLoginNoAccount {
    return Intl.message(r'Don' "'" r't have an account?',
        locale: _localeName,
        name: 'rallyLoginNoAccount',
        desc: r'Prompt for signing up for an account.');
  }

  String get rallyLoginPassword {
    return Intl.message(r'Password',
        locale: _localeName,
        name: 'rallyLoginPassword',
        desc: r'The password field in an login form.');
  }

  String get rallyLoginRememberMe {
    return Intl.message(r'Remember Me',
        locale: _localeName,
        name: 'rallyLoginRememberMe',
        desc: r'Text if the user wants to stay logged in.');
  }

  String get rallyLoginSignUp {
    return Intl.message(r'SIGN UP',
        locale: _localeName,
        name: 'rallyLoginSignUp',
        desc: r'Button text to sign up for an account.');
  }

  String get rallyLoginUsername {
    return Intl.message(r'Username',
        locale: _localeName,
        name: 'rallyLoginUsername',
        desc: r'The username field in an login form.');
  }

  String get rallySeeAll {
    return Intl.message(r'SEE ALL',
        locale: _localeName,
        name: 'rallySeeAll',
        desc: r'Link text for button to see all data for category.');
  }

  String get rallySettingsFindAtms {
    return Intl.message(r'Find ATMs',
        locale: _localeName,
        name: 'rallySettingsFindAtms',
        desc: r'Link to go to the page ' "'" r'Find ATMs' "'" r'.');
  }

  String get rallySettingsHelp {
    return Intl.message(r'Help',
        locale: _localeName,
        name: 'rallySettingsHelp',
        desc: r'Link to go to the page ' "'" r'Help' "'" r'.');
  }

  String get rallySettingsManageAccounts {
    return Intl.message(r'Manage Accounts',
        locale: _localeName,
        name: 'rallySettingsManageAccounts',
        desc: r'Link to go to the page ' "'" r'Manage Accounts.');
  }

  String get rallySettingsNotifications {
    return Intl.message(r'Notifications',
        locale: _localeName,
        name: 'rallySettingsNotifications',
        desc: r'Link to go to the page ' "'" r'Notifications' "'" r'.');
  }

  String get rallySettingsPaperlessSettings {
    return Intl.message(r'Paperless Settings',
        locale: _localeName,
        name: 'rallySettingsPaperlessSettings',
        desc: r'Link to go to the page ' "'" r'Paperless Settings' "'" r'.');
  }

  String get rallySettingsPasscodeAndTouchId {
    return Intl.message(r'Passcode and Touch ID',
        locale: _localeName,
        name: 'rallySettingsPasscodeAndTouchId',
        desc: r'Link to go to the page ' "'" r'Passcode and Touch ID' "'" r'.');
  }

  String get rallySettingsPersonalInformation {
    return Intl.message(r'Personal Information',
        locale: _localeName,
        name: 'rallySettingsPersonalInformation',
        desc: r'Link to go to the page ' "'" r'Personal Information' "'" r'.');
  }

  String get rallySettingsSignOut {
    return Intl.message(r'Sign out',
        locale: _localeName,
        name: 'rallySettingsSignOut',
        desc: r'Link to go to the page ' "'" r'Sign out' "'" r'.');
  }

  String get rallySettingsTaxDocuments {
    return Intl.message(r'Tax Documents',
        locale: _localeName,
        name: 'rallySettingsTaxDocuments',
        desc: r'Link to go to the page ' "'" r'Tax Documents' "'" r'.');
  }

  String get rallyTitleAccounts {
    return Intl.message(r'ACCOUNTS',
        locale: _localeName,
        name: 'rallyTitleAccounts',
        desc: r'The navigation link to the accounts page.');
  }

  String get rallyTitleBills {
    return Intl.message(r'BILLS',
        locale: _localeName,
        name: 'rallyTitleBills',
        desc: r'The navigation link to the bills page.');
  }

  String get rallyTitleBudgets {
    return Intl.message(r'BUDGETS',
        locale: _localeName,
        name: 'rallyTitleBudgets',
        desc: r'The navigation link to the budgets page.');
  }

  String get rallyTitleOverview {
    return Intl.message(r'OVERVIEW',
        locale: _localeName,
        name: 'rallyTitleOverview',
        desc: r'The navigation link to the overview page.');
  }

  String get rallyTitleSettings {
    return Intl.message(r'SETTINGS',
        locale: _localeName,
        name: 'rallyTitleSettings',
        desc: r'The navigation link to the settings page.');
  }

  String get settingsAbout {
    return Intl.message(r'About Flutter Gallery',
        locale: _localeName,
        name: 'settingsAbout',
        desc: r'Title for information button.');
  }

  String get settingsAttribution {
    return Intl.message(r'Designed by TOASTER in London',
        locale: _localeName,
        name: 'settingsAttribution',
        desc:
            r'Title for attribution (TOASTER is a proper name and should remain in English).');
  }

  String get settingsDarkTheme {
    return Intl.message(r'Dark',
        locale: _localeName,
        name: 'settingsDarkTheme',
        desc: r'Title for the dark theme setting.');
  }

  String get settingsFeedback {
    return Intl.message(r'Send feedback',
        locale: _localeName,
        name: 'settingsFeedback',
        desc: r'Title for feedback button.');
  }

  String get settingsLightTheme {
    return Intl.message(r'Light',
        locale: _localeName,
        name: 'settingsLightTheme',
        desc: r'Title for the light theme setting.');
  }

  String get settingsLocale {
    return Intl.message(r'Locale',
        locale: _localeName,
        name: 'settingsLocale',
        desc: r'Title for locale setting.');
  }

  String get settingsPlatformAndroid {
    return Intl.message(r'Android',
        locale: _localeName,
        name: 'settingsPlatformAndroid',
        desc: r'Title for Android platform setting.');
  }

  String get settingsPlatformIOS {
    return Intl.message(r'iOS',
        locale: _localeName,
        name: 'settingsPlatformIOS',
        desc: r'Title for iOS platform setting.');
  }

  String get settingsPlatformMechanics {
    return Intl.message(r'Platform mechanics',
        locale: _localeName,
        name: 'settingsPlatformMechanics',
        desc: r'Title for platform mechanics (iOS/Android) setting.');
  }

  String get settingsSlowMotion {
    return Intl.message(r'Slow motion',
        locale: _localeName,
        name: 'settingsSlowMotion',
        desc: r'Title for slow motion setting.');
  }

  String get settingsSystemDefault {
    return Intl.message(r'System',
        locale: _localeName,
        name: 'settingsSystemDefault',
        desc: r'Option label to indicate the system default will be used.');
  }

  String get settingsTextDirection {
    return Intl.message(r'Text direction',
        locale: _localeName,
        name: 'settingsTextDirection',
        desc: r'Title for text direction setting.');
  }

  String get settingsTextDirectionLTR {
    return Intl.message(r'LTR',
        locale: _localeName,
        name: 'settingsTextDirectionLTR',
        desc: r'Option label for left-to-right text direction setting.');
  }

  String get settingsTextDirectionRTL {
    return Intl.message(r'RTL',
        locale: _localeName,
        name: 'settingsTextDirectionRTL',
        desc: r'Option label for right-to-left text direction setting.');
  }

  String get settingsTextScaling {
    return Intl.message(r'Text scaling',
        locale: _localeName,
        name: 'settingsTextScaling',
        desc: r'Title for text scaling setting.');
  }

  String get settingsTextScalingHuge {
    return Intl.message(r'Huge',
        locale: _localeName,
        name: 'settingsTextScalingHuge',
        desc: r'Option label for huge text scale setting.');
  }

  String get settingsTextScalingLarge {
    return Intl.message(r'Large',
        locale: _localeName,
        name: 'settingsTextScalingLarge',
        desc: r'Option label for large text scale setting.');
  }

  String get settingsTextScalingNormal {
    return Intl.message(r'Normal',
        locale: _localeName,
        name: 'settingsTextScalingNormal',
        desc: r'Option label for normal text scale setting.');
  }

  String get settingsTextScalingSmall {
    return Intl.message(r'Small',
        locale: _localeName,
        name: 'settingsTextScalingSmall',
        desc: r'Option label for small text scale setting.');
  }

  String get settingsTheme {
    return Intl.message(r'Theme',
        locale: _localeName,
        name: 'settingsTheme',
        desc: r'Title for the theme setting.');
  }

  String get settingsTitle {
    return Intl.message(r'Settings',
        locale: _localeName,
        name: 'settingsTitle',
        desc: r'Title for the settings screen.');
  }

  String get shrineCancelButtonCaption {
    return Intl.message(r'ÇÅṆÇÉŁ',
        locale: _localeName,
        name: 'shrineCancelButtonCaption',
        desc:
            r'On the login screen, the caption for a button to cancel login.');
  }

  String get shrineCartClearButtonCaption {
    return Intl.message(r'ÇŁÉÅR ÇÅRT',
        locale: _localeName,
        name: 'shrineCartClearButtonCaption',
        desc: r'Caption for a button used to clear the cart.');
  }

  String shrineCartItemCount(Object quantity) {
    return Intl.message(r'$quantity ÎTÉMŠ',
        locale: _localeName,
        name: 'shrineCartItemCount',
        desc: r'A text showing the total number of items in the cart.',
        args: <Object>[quantity]);
  }

  String get shrineCartPageCaption {
    return Intl.message(r'ÇÅRT',
        locale: _localeName,
        name: 'shrineCartPageCaption',
        desc: r'Caption for a shopping cart page.');
  }

  String get shrineCartShippingCaption {
    return Intl.message(r'Šħîppîṇğ:',
        locale: _localeName,
        name: 'shrineCartShippingCaption',
        desc:
            r'Label for a text showing the shipping cost for the items in the cart.');
  }

  String get shrineCartSubtotalCaption {
    return Intl.message(r'Šübtòtåł:',
        locale: _localeName,
        name: 'shrineCartSubtotalCaption',
        desc:
            r'Label for a text showing the subtotal price of the items in the cart (excluding shipping and tax).');
  }

  String get shrineCartTaxCaption {
    return Intl.message(r'Tåx:',
        locale: _localeName,
        name: 'shrineCartTaxCaption',
        desc: r'Label for a text showing the tax for the items in the cart.');
  }

  String get shrineCartTotalCaption {
    return Intl.message(r'TÒTÅŁ',
        locale: _localeName,
        name: 'shrineCartTotalCaption',
        desc:
            r'Label for a text showing total price of the items in the cart.');
  }

  String get shrineCategoryNameAccessories {
    return Intl.message(r'Åççéššòrîéš',
        locale: _localeName,
        name: 'shrineCategoryNameAccessories',
        desc:
            r'A category of products consisting of accessories (clothing items).');
  }

  String get shrineCategoryNameAll {
    return Intl.message(r'Åłł',
        locale: _localeName,
        name: 'shrineCategoryNameAll',
        desc: r'A tab showing products from all categories.');
  }

  String get shrineCategoryNameClothing {
    return Intl.message(r'Çłòtħîṇğ',
        locale: _localeName,
        name: 'shrineCategoryNameClothing',
        desc: r'A category of products consisting of clothing.');
  }

  String get shrineCategoryNameHome {
    return Intl.message(r'Ħòmé',
        locale: _localeName,
        name: 'shrineCategoryNameHome',
        desc: r'A category of products consisting of items used at home.');
  }

  String get shrineDescription {
    return Intl.message(r'A fashionable retail app',
        locale: _localeName,
        name: 'shrineDescription',
        desc: r'Study description for Shrine.');
  }

  String get shrineLoginPasswordLabel {
    return Intl.message(r'Påššwòrd',
        locale: _localeName,
        name: 'shrineLoginPasswordLabel',
        desc:
            r'On the login screen, a label for a textfield for the user to input their password.');
  }

  String get shrineLoginUsernameLabel {
    return Intl.message(r'Üšérṇåmé',
        locale: _localeName,
        name: 'shrineLoginUsernameLabel',
        desc:
            r'On the login screen, a label for a textfield for the user to input their username.');
  }

  String get shrineLogoutButtonCaption {
    return Intl.message(r'ŁÒĞÒÜT',
        locale: _localeName,
        name: 'shrineLogoutButtonCaption',
        desc: r'Label for a logout button.');
  }

  String get shrineMenuCaption {
    return Intl.message(r'MÉṆÜ',
        locale: _localeName,
        name: 'shrineMenuCaption',
        desc: r'Caption for a menu page.');
  }

  String get shrineNextButtonCaption {
    return Intl.message(r'ṆÉXT',
        locale: _localeName,
        name: 'shrineNextButtonCaption',
        desc:
            r'On the login screen, the caption for a button to proceed login.');
  }

  String get shrineProductBlueStoneMug {
    return Intl.message(r'Błüé štòṇé müğ',
        locale: _localeName,
        name: 'shrineProductBlueStoneMug',
        desc: r'Name of the product ' "'" r'Blue stone mug' "'" r'.');
  }

  String get shrineProductCeriseScallopTee {
    return Intl.message(r'Çérîšé šçåłłòp téé',
        locale: _localeName,
        name: 'shrineProductCeriseScallopTee',
        desc: r'Name of the product ' "'" r'Cerise scallop tee' "'" r'.');
  }

  String get shrineProductChambrayNapkins {
    return Intl.message(r'Çħåmbråÿ ṇåpkîṇš',
        locale: _localeName,
        name: 'shrineProductChambrayNapkins',
        desc: r'Name of the product ' "'" r'Chambray napkins' "'" r'.');
  }

  String get shrineProductChambrayShirt {
    return Intl.message(r'Çħåmbråÿ šħîrt',
        locale: _localeName,
        name: 'shrineProductChambrayShirt',
        desc: r'Name of the product ' "'" r'Chambray shirt' "'" r'.');
  }

  String get shrineProductClassicWhiteCollar {
    return Intl.message(r'Çłåššîç wħîté çòłłår',
        locale: _localeName,
        name: 'shrineProductClassicWhiteCollar',
        desc: r'Name of the product ' "'" r'Classic white collar' "'" r'.');
  }

  String get shrineProductClaySweater {
    return Intl.message(r'Çłåÿ šwéåtér',
        locale: _localeName,
        name: 'shrineProductClaySweater',
        desc: r'Name of the product ' "'" r'Clay sweater' "'" r'.');
  }

  String get shrineProductCopperWireRack {
    return Intl.message(r'Çòppér wîré råçk',
        locale: _localeName,
        name: 'shrineProductCopperWireRack',
        desc: r'Name of the product ' "'" r'Copper wire rack' "'" r'.');
  }

  String get shrineProductFineLinesTee {
    return Intl.message(r'Fîṇé łîṇéš téé',
        locale: _localeName,
        name: 'shrineProductFineLinesTee',
        desc: r'Name of the product ' "'" r'Fine lines tee' "'" r'.');
  }

  String get shrineProductGardenStrand {
    return Intl.message(r'Ğårdéṇ štråṇd',
        locale: _localeName,
        name: 'shrineProductGardenStrand',
        desc: r'Name of the product ' "'" r'Garden strand' "'" r'.');
  }

  String get shrineProductGatsbyHat {
    return Intl.message(r'Ğåtšbÿ ħåt',
        locale: _localeName,
        name: 'shrineProductGatsbyHat',
        desc: r'Name of the product ' "'" r'Gatsby hat' "'" r'.');
  }

  String get shrineProductGentryJacket {
    return Intl.message(r'Ğéṇtrÿ jåçkét',
        locale: _localeName,
        name: 'shrineProductGentryJacket',
        desc: r'Name of the product ' "'" r'Gentry jacket' "'" r'.');
  }

  String get shrineProductGiltDeskTrio {
    return Intl.message(r'Ğîłt déšk trîò',
        locale: _localeName,
        name: 'shrineProductGiltDeskTrio',
        desc: r'Name of the product ' "'" r'Gilt desk trio' "'" r'.');
  }

  String get shrineProductGingerScarf {
    return Intl.message(r'Ğîṇğér šçårf',
        locale: _localeName,
        name: 'shrineProductGingerScarf',
        desc: r'Name of the product ' "'" r'Ginger scarf' "'" r'.');
  }

  String get shrineProductGreySlouchTank {
    return Intl.message(r'Ğréÿ šłòüçħ tåṇk',
        locale: _localeName,
        name: 'shrineProductGreySlouchTank',
        desc: r'Name of the product ' "'" r'Grey slouch tank' "'" r'.');
  }

  String get shrineProductHurrahsTeaSet {
    return Intl.message(r'Ħürråħš téå šét',
        locale: _localeName,
        name: 'shrineProductHurrahsTeaSet',
        desc: r'Name of the product ' "'" r'Hurrahs tea set' "'" r'.');
  }

  String get shrineProductKitchenQuattro {
    return Intl.message(r'Kîtçħéṇ qüåttrò',
        locale: _localeName,
        name: 'shrineProductKitchenQuattro',
        desc: r'Name of the product ' "'" r'Kitchen quattro' "'" r'.');
  }

  String get shrineProductNavyTrousers {
    return Intl.message(r'Ṇåvÿ tròüšérš',
        locale: _localeName,
        name: 'shrineProductNavyTrousers',
        desc: r'Name of the product ' "'" r'Navy trousers' "'" r'.');
  }

  String get shrineProductPlasterTunic {
    return Intl.message(r'Płåštér tüṇîç',
        locale: _localeName,
        name: 'shrineProductPlasterTunic',
        desc: r'Name of the product ' "'" r'Plaster tunic' "'" r'.');
  }

  String shrineProductPrice(Object price) {
    return Intl.message(r'x $price',
        locale: _localeName,
        name: 'shrineProductPrice',
        desc: r'A text showing the unit price of each product. Used as: '
            "'"
            r'Quantity: 3 x $129'
            "'"
            r'. The currency will be handled by the formatter.',
        args: <Object>[price]);
  }

  String shrineProductQuantity(Object quantity) {
    return Intl.message(r'Qüåṇtîtÿ: $quantity',
        locale: _localeName,
        name: 'shrineProductQuantity',
        desc: r'A text showing the number of items for a specific product.',
        args: <Object>[quantity]);
  }

  String get shrineProductQuartetTable {
    return Intl.message(r'Qüårtét tåbłé',
        locale: _localeName,
        name: 'shrineProductQuartetTable',
        desc: r'Name of the product ' "'" r'Quartet table' "'" r'.');
  }

  String get shrineProductRainwaterTray {
    return Intl.message(r'Råîṇwåtér tråÿ',
        locale: _localeName,
        name: 'shrineProductRainwaterTray',
        desc: r'Name of the product ' "'" r'Rainwater tray' "'" r'.');
  }

  String get shrineProductRamonaCrossover {
    return Intl.message(r'Råmòṇå çròššòvér',
        locale: _localeName,
        name: 'shrineProductRamonaCrossover',
        desc: r'Name of the product ' "'" r'Ramona crossover' "'" r'.');
  }

  String get shrineProductSeaTunic {
    return Intl.message(r'Šéå tüṇîç',
        locale: _localeName,
        name: 'shrineProductSeaTunic',
        desc: r'Name of the product ' "'" r'Sea tunic' "'" r'.');
  }

  String get shrineProductSeabreezeSweater {
    return Intl.message(r'Šéåbrééźé šwéåtér',
        locale: _localeName,
        name: 'shrineProductSeabreezeSweater',
        desc: r'Name of the product ' "'" r'Seabreeze sweater' "'" r'.');
  }

  String get shrineProductShoulderRollsTee {
    return Intl.message(r'Šħòüłdér ròłłš téé',
        locale: _localeName,
        name: 'shrineProductShoulderRollsTee',
        desc: r'Name of the product ' "'" r'Shoulder rolls tee' "'" r'.');
  }

  String get shrineProductShrugBag {
    return Intl.message(r'Šħrüğ båğ',
        locale: _localeName,
        name: 'shrineProductShrugBag',
        desc: r'Name of the product ' "'" r'Shrug bag' "'" r'.');
  }

  String get shrineProductSootheCeramicSet {
    return Intl.message(r'Šòòtħé çéråmîç šét',
        locale: _localeName,
        name: 'shrineProductSootheCeramicSet',
        desc: r'Name of the product ' "'" r'Soothe ceramic set' "'" r'.');
  }

  String get shrineProductStellaSunglasses {
    return Intl.message(r'Štéłłå šüṇğłåššéš',
        locale: _localeName,
        name: 'shrineProductStellaSunglasses',
        desc: r'Name of the product ' "'" r'Stella sunglasses' "'" r'.');
  }

  String get shrineProductStrutEarrings {
    return Intl.message(r'Štrüt éårrîṇğš',
        locale: _localeName,
        name: 'shrineProductStrutEarrings',
        desc: r'Name of the product ' "'" r'Strut earrings' "'" r'.');
  }

  String get shrineProductSucculentPlanters {
    return Intl.message(r'Šüççüłéṇt płåṇtérš',
        locale: _localeName,
        name: 'shrineProductSucculentPlanters',
        desc: r'Name of the product ' "'" r'Succulent planters' "'" r'.');
  }

  String get shrineProductSunshirtDress {
    return Intl.message(r'Šüṇšħîrt dréšš',
        locale: _localeName,
        name: 'shrineProductSunshirtDress',
        desc: r'Name of the product ' "'" r'Sunshirt dress' "'" r'.');
  }

  String get shrineProductSurfAndPerfShirt {
    return Intl.message(r'Šürf åṇd pérf šħîrt',
        locale: _localeName,
        name: 'shrineProductSurfAndPerfShirt',
        desc: r'Name of the product ' "'" r'Surf and perf shirt' "'" r'.');
  }

  String get shrineProductVagabondSack {
    return Intl.message(r'Våğåbòṇd šåçk',
        locale: _localeName,
        name: 'shrineProductVagabondSack',
        desc: r'Name of the product ' "'" r'Vagabond sack' "'" r'.');
  }

  String get shrineProductVarsitySocks {
    return Intl.message(r'Våršîtÿ šòçkš',
        locale: _localeName,
        name: 'shrineProductVarsitySocks',
        desc: r'Name of the product ' "'" r'Varsity socks' "'" r'.');
  }

  String get shrineProductWalterHenleyWhite {
    return Intl.message(r'Wåłtér ħéṇłéÿ (wħîté)',
        locale: _localeName,
        name: 'shrineProductWalterHenleyWhite',
        desc: r'Name of the product ' "'" r'Walter henley (white)' "'" r'.');
  }

  String get shrineProductWeaveKeyring {
    return Intl.message(r'Wéåvé kéÿrîṇğ',
        locale: _localeName,
        name: 'shrineProductWeaveKeyring',
        desc: r'Name of the product ' "'" r'Weave keyring' "'" r'.');
  }

  String get shrineProductWhitePinstripeShirt {
    return Intl.message(r'Wħîté pîṇštrîpé šħîrt',
        locale: _localeName,
        name: 'shrineProductWhitePinstripeShirt',
        desc: r'Name of the product ' "'" r'White pinstripe shirt' "'" r'.');
  }

  String get shrineProductWhitneyBelt {
    return Intl.message(r'Wħîtṇéÿ béłt',
        locale: _localeName,
        name: 'shrineProductWhitneyBelt',
        desc: r'Name of the product ' "'" r'Whitney belt' "'" r'.');
  }

  String get starterAppDescription {
    return Intl.message(r'A responsive starter layout',
        locale: _localeName,
        name: 'starterAppDescription',
        desc: r'The description for the starter app.');
  }

  String starterAppDrawerItem(Object value) {
    return Intl.message(r'Item $value',
        locale: _localeName,
        name: 'starterAppDrawerItem',
        desc: r'Generic placeholder drawer item.',
        args: <Object>[value]);
  }

  String get starterAppGenericBody {
    return Intl.message(r'Body',
        locale: _localeName,
        name: 'starterAppGenericBody',
        desc: r'Generic placeholder for body text in drawer.');
  }

  String get starterAppGenericButton {
    return Intl.message(r'BUTTON',
        locale: _localeName,
        name: 'starterAppGenericButton',
        desc: r'Generic placeholder for button.');
  }

  String get starterAppGenericHeadline {
    return Intl.message(r'Headline',
        locale: _localeName,
        name: 'starterAppGenericHeadline',
        desc: r'Generic placeholder for headline in drawer.');
  }

  String get starterAppGenericSubtitle {
    return Intl.message(r'Subtitle',
        locale: _localeName,
        name: 'starterAppGenericSubtitle',
        desc: r'Generic placeholder for subtitle in drawer.');
  }

  String get starterAppGenericTitle {
    return Intl.message(r'Title',
        locale: _localeName,
        name: 'starterAppGenericTitle',
        desc: r'Generic placeholder for title in app bar.');
  }

  String get starterAppTitle {
    return Intl.message(r'Starter app',
        locale: _localeName,
        name: 'starterAppTitle',
        desc: r'The title and name for the starter app.');
  }

  String get starterAppTooltipAdd {
    return Intl.message(r'Add',
        locale: _localeName,
        name: 'starterAppTooltipAdd',
        desc: r'Tooltip on add icon.');
  }

  String get starterAppTooltipFavorite {
    return Intl.message(r'Favorite',
        locale: _localeName,
        name: 'starterAppTooltipFavorite',
        desc: r'Tooltip on favorite icon.');
  }

  String get starterAppTooltipSearch {
    return Intl.message(r'Search',
        locale: _localeName,
        name: 'starterAppTooltipSearch',
        desc: r'Tooltip on search icon.');
  }

  String get starterAppTooltipShare {
    return Intl.message(r'Share',
        locale: _localeName,
        name: 'starterAppTooltipShare',
        desc: r'Tooltip on share icon.');
  }
}

class _GalleryLocalizationsDelegate
    extends LocalizationsDelegate<GalleryLocalizations> {
  const _GalleryLocalizationsDelegate();

  @override
  Future<GalleryLocalizations> load(Locale locale) =>
      GalleryLocalizations.load(locale);

  @override
  bool isSupported(Locale locale) => <String>[
        'af',
        'am',
        'ar',
        'as',
        'az',
        'be',
        'bg',
        'bn',
        'bs',
        'ca',
        'cs',
        'da',
        'de',
        'el',
        'en',
        'es',
        'et',
        'eu',
        'fa',
        'fi',
        'fil',
        'fr',
        'gl',
        'gsw',
        'gu',
        'he',
        'hi',
        'hr',
        'hu',
        'hy',
        'id',
        'is',
        'it',
        'ja',
        'ka',
        'kk',
        'km',
        'kn',
        'ko',
        'ky',
        'lo',
        'lt',
        'lv',
        'mk',
        'ml',
        'mn',
        'mr',
        'ms',
        'my',
        'nb',
        'ne',
        'nl',
        'or',
        'pa',
        'pl',
        'pt',
        'ro',
        'ru',
        'si',
        'sk',
        'sl',
        'sq',
        'sr',
        'sv',
        'sw',
        'ta',
        'te',
        'th',
        'tl',
        'tr',
        'uk',
        'ur',
        'uz',
        'vi',
        'zh',
        'zu'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_GalleryLocalizationsDelegate old) => false;
}
