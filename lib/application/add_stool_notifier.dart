import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'add_stool_notifier.freezed.dart';

@freezed
class AddStoolState with _$AddStoolState {
  const AddStoolState._();
  const factory AddStoolState.initial() = _Initial;
  const factory AddStoolState.initialised(
    Stool stool,
    bool showBloodOption,
  ) = _Initialised;
}

class AddStoolNotifier extends StateNotifier<AddStoolState> {
  final _newStool = Stool(
    id: '1',
    dateTime: DateTime.now(),
    hasBlood: false,
    type: 4,
  );

  bool _showBloodOption = false;

  AddStoolNotifier() : super(const AddStoolState.initial());

  Future<void> initialise() async {
    final prefs = await SharedPreferences.getInstance();
    _showBloodOption = prefs.getBool('show_blood') ?? false;
    state = AddStoolState.initialised(
      _newStool,
      _showBloodOption,
    );
  }

  Future<void> setBlood(bool hasBlood) async {
    state = const AddStoolState.initial();
    state = AddStoolState.initialised(
      _newStool.copyWith(hasBlood: hasBlood),
      _showBloodOption,
    );
  }
}
