import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/about_page.dart';
import 'package:bristol_stool_chart/presentation/add_page.dart';
import 'package:bristol_stool_chart/presentation/graph_info_page.dart';
import 'package:bristol_stool_chart/presentation/graph_page.dart';
import 'package:bristol_stool_chart/presentation/intro_page.dart';
import 'package:bristol_stool_chart/presentation/settings_page.dart';
import 'package:bristol_stool_chart/presentation/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<dynamic>(page: AboutPage),
    AutoRoute<dynamic>(page: AddPage),
    AutoRoute<dynamic>(page: GraphInfoPage),
    AutoRoute<dynamic>(page: GraphPage),
    AutoRoute<dynamic>(page: IntroPage),
    AutoRoute<dynamic>(page: SettingsPage),
    AutoRoute<dynamic>(page: SplashPage, initial: true),
  ],
)
class $AppRouter {}
