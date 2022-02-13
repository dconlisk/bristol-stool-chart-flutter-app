import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_repository.dart';
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
  late Stool _newStool;
  final IStoolRepository _stoolRepository;

  bool _showBloodOption = false;

  AddStoolNotifier(this._stoolRepository)
      : super(
          AddStoolState.initial(
            Stool.empty(),
            false,
          ),
        );

  Future<void> initialise() async {
    final prefs = await SharedPreferences.getInstance();
    _showBloodOption = prefs.getBool('show_blood') ?? false;
    _newStool = Stool(
      dateTime: DateTime.now(),
      hasBlood: false,
      type: 4,
    );
    state = AddStoolState.initialised(
      _newStool,
      _showBloodOption,
    );
  }

  Future<void> setBlood(bool hasBlood) async {
    state = AddStoolState.initialised(
      state.stool.copyWith(hasBlood: hasBlood),
      _showBloodOption,
    );
  }

  Future<void> setType(int type) async {
    state = AddStoolState.initialised(
      state.stool.copyWith(type: type),
      _showBloodOption,
    );
  }

  Future<void> setDate(String date) async {
    state = AddStoolState.initialised(
      state.stool.copyWith(dateTime: DateTime.tryParse(date) ?? DateTime.now()),
      _showBloodOption,
    );
  }

  Future<void> saveState() async {
    final result = await _stoolRepository.addStool(state.stool);

    if (result.isLeft()) {
      state = AddStoolState.error(
        state.stool,
        _showBloodOption,
      );
    } else {
      state = AddStoolState.success(
        state.stool,
        _showBloodOption,
      );
    }
  }
}
