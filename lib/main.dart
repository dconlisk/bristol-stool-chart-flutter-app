import 'package:bristol_stool_chart/presentation/app_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  // Add licenses for Google fonts
  LicenseRegistry.addLicense(
    () async* {
      final playfairLicense =
          await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], playfairLicense);

      final robotoLicense =
          await rootBundle.loadString('google_fonts/LICENSE.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], robotoLicense);
    },
  );

  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
