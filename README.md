# bristol-stool-chart-flutter-app
The Bristol Stool Chart mobile app written in Google Flutter and Dart.

# To release for Android

Use Android Studio, open the flutter app.
Build -> Generate Signed Bundle/APK and choose Android App Bundle
Next
Use the bsc-upload-keystore from Google Drive (BSC folder). The password is in 1Password. The alias is bristolstoolchart (same password).
Next
Choose Build Variants (release) and hit Finish.

Upload to Google Play Store.
