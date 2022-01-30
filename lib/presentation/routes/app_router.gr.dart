// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../about_page.dart' as _i1;
import '../graph_page.dart' as _i3;
import '../intro_page.dart' as _i2;
import '../settings_page.dart' as _i4;
import '../splash_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AboutPage());
    },
    IntroRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.IntroPage());
    },
    GraphRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GraphPage());
    },
    SettingsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SplashPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(AboutRoute.name, path: '/about-page'),
        _i6.RouteConfig(IntroRoute.name, path: '/intro-page'),
        _i6.RouteConfig(GraphRoute.name, path: '/graph-page'),
        _i6.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i6.RouteConfig(SplashRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i6.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/about-page');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i2.IntroPage]
class IntroRoute extends _i6.PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '/intro-page');

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i3.GraphPage]
class GraphRoute extends _i6.PageRouteInfo<void> {
  const GraphRoute() : super(GraphRoute.name, path: '/graph-page');

  static const String name = 'GraphRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}
