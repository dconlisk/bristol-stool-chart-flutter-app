import 'package:bristol_stool_chart/domain/stool.dart';
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
}

class AddStoolNotifier extends StateNotifier<AddStoolState> {
  late Stool _newStool;

  bool _showBloodOption = false;

  AddStoolNotifier()
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
}
