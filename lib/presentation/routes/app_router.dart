import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/about_page.dart';
import 'package:bristol_stool_chart/presentation/graph_page.dart';
import 'package:bristol_stool_chart/presentation/intro_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<dynamic>(page: AboutPage, initial: true),
    AutoRoute<dynamic>(page: IntroPage),
    AutoRoute<dynamic>(page: GraphPage),
  ],
)
class $AppRouter {}
