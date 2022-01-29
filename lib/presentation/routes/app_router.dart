import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/about_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: AboutPage, initial: true),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
