// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../about_page.dart' as _i1;
import '../graph_page.dart' as _i3;
import '../intro_page.dart' as _i2;
import '../settings_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AboutPage());
    },
    IntroRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.IntroPage());
    },
    GraphRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GraphPage());
    },
    SettingsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AboutRoute.name, path: '/'),
        _i5.RouteConfig(IntroRoute.name, path: '/intro-page'),
        _i5.RouteConfig(GraphRoute.name, path: '/graph-page'),
        _i5.RouteConfig(SettingsRoute.name, path: '/settings-page')
      ];
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i5.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i2.IntroPage]
class IntroRoute extends _i5.PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '/intro-page');

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i3.GraphPage]
class GraphRoute extends _i5.PageRouteInfo<void> {
  const GraphRoute() : super(GraphRoute.name, path: '/graph-page');

  static const String name = 'GraphRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}
