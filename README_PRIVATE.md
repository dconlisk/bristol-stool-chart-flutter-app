# Technical Notes

These are really some notes for myself so I don't forget how to deploy ;)

## Deploying to Android

Use Android Studio, open the flutter app.
Build -> Generate Signed Bundle/APK and choose Android App Bundle
Next
Use the bsc-upload-keystore from Google Drive (BSC folder). The password is in 1Password. The alias is bristolstoolchart (same password).
Next
Choose Build Variants (release) and hit Finish.

Upload to Google Play Store.