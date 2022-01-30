// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../about_page.dart' as _i1;
import '../graph_page.dart' as _i3;
import '../intro_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AboutPage());
    },
    IntroRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.IntroPage());
    },
    GraphRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GraphPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AboutRoute.name, path: '/'),
        _i4.RouteConfig(IntroRoute.name, path: '/intro-page'),
        _i4.RouteConfig(GraphRoute.name, path: '/graph-page')
      ];
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i4.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i2.IntroPage]
class IntroRoute extends _i4.PageRouteInfo<void> {
  const IntroRoute() : super(IntroRoute.name, path: '/intro-page');

  static const String name = 'IntroRoute';
}

/// generated route for
/// [_i3.GraphPage]
class GraphRoute extends _i4.PageRouteInfo<void> {
  const GraphRoute() : super(GraphRoute.name, path: '/graph-page');

  static const String name = 'GraphRoute';
}
