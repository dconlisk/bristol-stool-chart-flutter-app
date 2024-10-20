import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/presentation/about_page.dart';
import 'package:bristol_stool_chart/presentation/add_page.dart';
import 'package:bristol_stool_chart/presentation/graph_info_page.dart';
import 'package:bristol_stool_chart/presentation/graph_page.dart';
import 'package:bristol_stool_chart/presentation/intro_page.dart';
import 'package:bristol_stool_chart/presentation/settings_page.dart';
import 'package:bristol_stool_chart/presentation/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AboutRoute.page),
        CustomRoute(
          page: AddRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        AutoRoute(page: GraphRoute.page),
        CustomRoute(
          page: GraphInfoRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        AutoRoute(page: IntroRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
      ];
}
