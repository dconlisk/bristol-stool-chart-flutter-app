// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../about_page.dart' as _i1;
import '../add_page.dart' as _i2;
import '../graph_info_page.dart' as _i4;
import '../graph_page.dart' as _i3;
import '../intro_page.dart' as _i5;
import '../settings_page.dart' as _i6;
import '../splash_page.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AboutPage());
    },
    AddRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.AddPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    GraphRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GraphPage());
    },
    GraphInfoRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.GraphInfoPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    IntroRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IntroPage());
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    },
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SplashPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(AboutRoute.name, path: '/about-page'),
        _i8.RouteConfig(AddRoute.name, path: '/add-page'),
        _i8.RouteConfig(GraphRoute.name, path: '/graph-page'),
        _i8.RouteConfig(GraphInfoRoute.name, path: '/graph-info-page'),
        _i8.RouteConfig(IntroRoute.name, path: '/intro-page'),
        _i8.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i8.RouteConfig(SplashRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i8.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/about-page');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i2.AddPage]
class AddRoute extends _i8.PageRouteInfo<void> {
  const AddRoute() : super(AddRoute.name, path: '/add-page');

  static const String name = 'AddRoute';
}

/// generated route for
/// [_i3.GraphPage]
class GraphRoute extends _i8.PageRouteInfo<void> {
  const GraphRoute() : super(GraphRoute.name, path: '/graph-page');

  static const String name = 'GraphRoute';
}

/// generated route for
/// [_i4.GraphInfoPage]
class GraphInfoRoute extends _i8.PageRouteInfo<void> {
  const GraphInfoRoute() : super(GraphInfoRoute.name, path: '/graph-info-page');

  static const String name = 'GraphInfoRoute';
}

/// generated route for
/// [_i5.IntroPage]
class IntroRoute extends _i8.PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '/intro-page');

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}
