import 'package:bristol_stool_chart/application/add_stool_notifier.dart';
import 'package:bristol_stool_chart/application/graph_notifier.dart';
import 'package:bristol_stool_chart/application/intro_notifier.dart';
import 'package:bristol_stool_chart/infrastructure/sembast_database.dart';
import 'package:bristol_stool_chart/infrastructure/stool_repository.dart';
import 'package:bristol_stool_chart/infrastructure/stool_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sembastProvider = Provider((ref) => SembastDatabase());

final stoolServiceProvider =
    Provider((ref) => StoolLocalService(ref.watch(sembastProvider)));

final stoolRepositoryProvider =
    Provider((ref) => StoolRepository(ref.watch(stoolServiceProvider)));

final introNotifierProvider = StateNotifierProvider<IntroNotifier, IntroState>(
  (ref) => IntroNotifier(),
);

final graphNotifierProvider = StateNotifierProvider<GraphNotifier, GraphState>(
    (ref) => GraphNotifier(ref.watch(stoolRepositoryProvider)));

final addStoolNotifierProvider =
    StateNotifierProvider<AddStoolNotifier, AddStoolState>(
        (ref) => AddStoolNotifier());
