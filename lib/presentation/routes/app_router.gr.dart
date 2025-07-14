// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(AboutRoute.name, initialChildren: children);

  static const String name = 'AboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AboutPage();
    },
  );
}

/// generated route for
/// [AddPage]
class AddRoute extends PageRouteInfo<AddRouteArgs> {
  AddRoute({Key? key, String? stoolId, List<PageRouteInfo>? children})
      : super(
          AddRoute.name,
          args: AddRouteArgs(key: key, stoolId: stoolId),
          initialChildren: children,
        );

  static const String name = 'AddRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddRouteArgs>(
        orElse: () => const AddRouteArgs(),
      );
      return AddPage(key: args.key, stoolId: args.stoolId);
    },
  );
}

class AddRouteArgs {
  const AddRouteArgs({this.key, this.stoolId});

  final Key? key;

  final String? stoolId;

  @override
  String toString() {
    return 'AddRouteArgs{key: $key, stoolId: $stoolId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddRouteArgs) return false;
    return key == other.key && stoolId == other.stoolId;
  }

  @override
  int get hashCode => key.hashCode ^ stoolId.hashCode;
}

/// generated route for
/// [GraphInfoPage]
class GraphInfoRoute extends PageRouteInfo<void> {
  const GraphInfoRoute({List<PageRouteInfo>? children})
      : super(GraphInfoRoute.name, initialChildren: children);

  static const String name = 'GraphInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GraphInfoPage();
    },
  );
}

/// generated route for
/// [GraphPage]
class GraphRoute extends PageRouteInfo<void> {
  const GraphRoute({List<PageRouteInfo>? children})
      : super(GraphRoute.name, initialChildren: children);

  static const String name = 'GraphRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GraphPage();
    },
  );
}

/// generated route for
/// [IntroPage]
class IntroRoute extends PageRouteInfo<void> {
  const IntroRoute({List<PageRouteInfo>? children})
      : super(IntroRoute.name, initialChildren: children);

  static const String name = 'IntroRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IntroPage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
