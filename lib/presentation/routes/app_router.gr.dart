// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../about_page.dart' as _i1;
import '../intro_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AboutPage());
    },
    IntroRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.IntroPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(AboutRoute.name, path: '/'),
        _i3.RouteConfig(IntroRoute.name, path: '/intro-page')
      ];
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i3.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i2.IntroPage]
class IntroRoute extends _i3.PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '/intro-page');

  static const String name = 'IntroRoute';
}
