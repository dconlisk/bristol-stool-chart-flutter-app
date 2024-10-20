import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_repository.dart';
import 'package:bristol_stool_chart/application/shared_preferences_keys.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'add_stool_notifier.freezed.dart';

@freezed
class AddStoolState with _$AddStoolState {
  const AddStoolState._();
  const factory AddStoolState.initial(
    Stool stool,
    bool showBloodOption,
  ) = _Initial;
  const factory AddStoolState.initialised(
    Stool stool,
    bool showBloodOption,
  ) = _Initialised;
  const factory AddStoolState.error(
    Stool stool,
    bool showBloodOption,
  ) = _ErrorState;
  const factory AddStoolState.success(
    Stool stool,
    bool showBloodOption,
  ) = _SuccessState;
}

class AddStoolNotifier extends StateNotifier<AddStoolState> {
  final IStoolRepository _stoolRepository;

  bool _showBloodOption = false;

  AddStoolNotifier(this._stoolRepository)
      : super(
          AddStoolState.initial(
            Stool.empty(),
            false,
          ),
        );

  Future<void> initialise(int? index) async {
    final prefs = await SharedPreferences.getInstance();
    _showBloodOption = prefs.getBool(sharedPreferencesBloodSettingKey) ?? false;

    if (index == null) {
      final newStool = Stool.empty();
      state = AddStoolState.initialised(
        newStool,
        _showBloodOption,
      );
    } else {
      final failureOrStool = await _stoolRepository.getStool(index);

      failureOrStool.fold(
        (l) => state = AddStoolState.error(
          state.stool,
          _showBloodOption,
        ),
        (r) => state = AddStoolState.initialised(
          r,
          _showBloodOption,
        ),
      );
    }
  }

  Future<void> updateStool(Stool stool) async {
    state = AddStoolState.initialised(
      stool,
      _showBloodOption,
    );
  }

  Future<void> addStool() async {
    final result = await _stoolRepository.addStool(state.stool);

    result.fold(
      (l) => state = AddStoolState.error(
        state.stool,
        _showBloodOption,
      ),
      (r) => state = AddStoolState.success(
        state.stool,
        _showBloodOption,
      ),
    );
  }

  Future<void> editStool() async {
    final result = await _stoolRepository.editStool(state.stool);

    result.fold(
      (l) => state = AddStoolState.error(
        state.stool,
        _showBloodOption,
      ),
      (r) => state = AddStoolState.success(
        state.stool,
        _showBloodOption,
      ),
    );
  }

  Future<void> deleteStool() async {
    final result = await _stoolRepository.deleteStool(state.stool);

    result.fold(
      (l) => state = AddStoolState.error(
        state.stool,
        _showBloodOption,
      ),
      (r) => state = AddStoolState.success(
        state.stool,
        _showBloodOption,
      ),
    );
  }
}
