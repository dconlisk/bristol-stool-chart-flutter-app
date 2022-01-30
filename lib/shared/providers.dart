import 'package:bristol_stool_chart/application/intro_notifier.dart';
import 'package:bristol_stool_chart/infrastructure/sembast_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final introNotifierProvider = StateNotifierProvider<IntroNotifier, IntroState>(
  (ref) => IntroNotifier(),
);

final sembastProvider = Provider((ref) => SembastDatabase());
