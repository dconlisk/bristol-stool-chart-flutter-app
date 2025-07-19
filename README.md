# The Bristol Stool Chart mobile app written in Flutter

This is the fourth iteration of the Bristol Stool Chart mobile app (from iOS native, to Xamarin Forms, then to a basic Flutter solution, and now to a more advanced Flutter application). It's a total rewrite with a new Material design and using Google Flutter and Dart. It's a single codebase that runs on both iOS and Android phones and tablets.

This app is used by medical professionals with their patients to track their stool quality over time. Users can track their stools and then share the data with their chosen health professional in the form of an easy-to-read graph as well as a csv of the raw data. The app does not track user data and is totally anonymous - no login required.

I created this app as a way to practice using Flutter while also keeping the app current and up-to-date.

## Flutter packages used (a selection)

- [auto_route](https://pub.dev/packages/auto_route) : this is maybe overkill for such a simple app as this, but it's the solution I use in my enterprise projects. It uses code generation to simplify the route setup in your app, and also allows the passing of strongly typed arguments as well as deep-linking. You declare your routes in app_router.dart (or similar), run your code generation as usual, and then your navigation code goes from something like this:

  `Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new GraphScreen()));`

  to something much nicer like this

  `AutoRouter.of(context).push(const GraphRoute());`

- [freezed](https://pub.dev/packages/freezed) : I'm using freezed with my immutable objects to auto-generate useful functions like copyWith, automatic serialization/deserialization of objects (using json_serializable), and union types so that you get compile time errors if you omit a state or include an impossible state.
- [json_serializable](https://pub.dev/packages/json_serializable) : the freezed package uses this to automatically generate serialization/deserialization methods for objects. I'm using this to convert my objects to/from JSON when storing to or retrieving from the database.
- [google_fonts](https://pub.dev/packages/google_fonts) : my designer friends tell me I should use nice fonts, so here I go.
- [shared_preferences](https://pub.dev/packages/shared_preferences) : you could argue that I could have stored all the data for the app in my sembast database, but I've used this as it's a simple solution for storing simple data in NSUserDefaults on iOS and macOS, and SharedPreferences on Android. Dead simple to use, I've used it to remember that the user has seen or skipped the onboarding introduction slideshow in the app.
- [intro_slider](https://pub.dev/packages/intro_slider) : I'm using this to display the onboarding slideshow that the user sees when they first open the app.
- [intl](https://pub.dev/packages/intl) : Used for formatting dates.
- [share_plus](https://pub.dev/packages/share_plus) : A Flutter Community plugin for sharing content via the device's share dialog. This allows my users to share the data and images via Whatsapp and text message, as well as via email, depending on what apps are installed on the device.
- [path_provider](https://pub.dev/packages/path_provider) : I'm using this to get a location on the filesystem to store the csv and image files before sharing.
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) : Automatically generate the launcher icon from a given png for all platforms.
- [package_info_plus](https://pub.dev/packages/package_info_plus) : Allows me to display the app version number in the drawer. It's important to know the version of the app being used when trying to debug reported issues.

## Technical notes

I use [fvm](https://fvm.app) to manage the flutter SDK versions installed on my machine. It allows you to set a global version of flutter for your projects to use, while also allowing you to specify local versions to use for each project. Note that this project contains a .fvm directory which contains the fvm_config.json file which specifies which version of flutter this project uses.
I have also created a Makefile which allows me to use shortcuts like `make generated` in my Terminal, which will run the command `@fvm flutter packages pub run build_runner build --delete-conflicting-outputs` - it's just quicker and easier to remember.

## Upgrade notes

- linting is your friend
- no longer any need for the new keyword
- added the const keyword
- null safety
- moved business logic from private methods in the widgets into riverpod state notifiers (better separation of concerns)
- perhaps slight overkill with the architecture for such a simple app, but a good illustration of best practice (e.g. widget -> repo -> service -> db)
- added some error handling (!)
- removed FutureBuilders
- removed unnecessary StatefulWidgets
- replaced static helper classes with interfaces and implementations, which makes it testable (in theory! No actual tests to be seen just now though ;))

## App Release Procedure

### Upgrading flutter and package versions

1. Update to the latest flutter version using `fvm releases` and then `fvm install x.x.x` where x.x.x is the latest version. Then use `fvm use x.x.x` to set the version for this project. This will also determine which version of dart you are using, as dart is installed as part of the flutter sdk. You can check the versions of dart and flutter using `flutter --version`. _NOTE_ Restart vscode after changing the version of flutter! Then run `flutter --version` to see what the correct latest version is.
2. (Optional) Update environment -> sdk in the pubspec.yaml file so that the lower number equals the version of dart you are using. For example, if you are using dart 3.1.0 then the sdk version should be >=3.1.0 <4.0.0.
3. Run `fvm flutter pub outdated` to see which packages are out of date. Run `fvm flutter pub upgrade` to upgrade all packages to the latest version. If you want to upgrade a specific package then run `fvm flutter pub upgrade package_name`.
4. You can also use the `V` icon on top right so that when you view the pupspec.yaml file you can see which packages are out of date and upgrade them from there using the bump link.
5. Make any code fixes required, and run `make resolve` and `make generated` to ensure that the code is working as expected.
6. When you try to run the app, use the command `fvm flutter run`. You may encounter some issues. You may need to manually dial back the upgraded package versions one by one so that they are all compatible with the version of dart being specified by your flutter version. Use pub.dev to view older versions of the package.

### Deploying the Android app to the Google Play Store

Ensure that the app uses a unique build number, e.g. 2.0.3+23 (23 must be unique in the Google Play store, if not then just bump it up one)
Run `fvm flutter build appbundle` to generate an Android App Bundle (build/app/outputs/bundle/release/app-release.aab).
Open the project in Android Studio.
Follow these instructions: https://developer.android.com/studio/publish/app-signing#generate-key using the existing key, passwords, etc. (see 1Password for more details)
Drag and drop the generated aab file into your new release in the Google Play store (https://play.google.com/console/u/0/developers).

To install and test the app on a device before publishing, go to the App Bundle explorer in the Google Play console, and click on the Downloads tab. Download the signed, universal APK and then run
`adb install /Users/david/Downloads/23.apk` (or whatever the apk file is called) to deploy the APK to the device. This should be signed and match the installed version of the app from the Google Play store.

### Deploying the iOS app to the Apple App Store

Create a release in App Store Connect (https://appstoreconnect.apple.com/apps) and give it the same version numbers as per the pubspec.yaml file (e.g. 2.0.3)
Run `fvm flutter build ipa` to generate the ipa
Upload build/ios/ipa/\*.ipa using the Transporter app.
https://docs.flutter.dev/deployment/ios

[See full instructions here](https://flutter.dev/docs/deployment/ios)

# The Bristol Stool Chart website

[The Bristol Stool Chart website](https://bristolstoolchart.net)

## Website maintenance

The website source code exists on the [gh-pages](https://github.com/dconlisk/bristol-stool-chart-flutter-app/tree/gh-pages) branch in the repository. Any edits to this branch will result in them being deployed to the live site.

# License

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
