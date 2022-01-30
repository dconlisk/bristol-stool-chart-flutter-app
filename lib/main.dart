import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';
import 'package:flutter/services.dart';

void main() {
  // Add licenses for Google fonts
  LicenseRegistry.addLicense(() async* {
    final playfairLicense = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], playfairLicense);

    final robotoLicense =
        await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], robotoLicense);
  });
  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Bristol Stool Chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
