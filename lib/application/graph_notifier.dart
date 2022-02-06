import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/infrastructure/stool_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'graph_notifier.freezed.dart';

@freezed
class GraphState with _$GraphState {
  const GraphState._();
  const factory GraphState.initial() = _Initial;
  const factory GraphState.initialised(List<Stool> stools) = _Initialised;
  const factory GraphState.failure() = _Failure;
}

class GraphNotifier extends StateNotifier<GraphState> {
  final StoolRepository _stoolRepository;

  GraphNotifier(this._stoolRepository) : super(const GraphState.initial());

  // Get the existing data from the repository
  Future<void> initialise() async {
    final failureOrStools = await _stoolRepository.getAllStools();

    state = failureOrStools.fold(
      (failure) => const GraphState.failure(),
      (stools) => GraphState.initialised(stools),
    );
  }
}
