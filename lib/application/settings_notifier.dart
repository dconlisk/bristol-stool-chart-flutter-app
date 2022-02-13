import 'package:bristol_stool_chart/application/shared_preferences_keys.dart';
import 'package:bristol_stool_chart/infrastructure/stool_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_notifier.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.initialised(bool showBloodOption) = _Initialised;
  const factory SettingsState.error() = _Error;
  const factory SettingsState.success() = _Success;
}

class SettingsNotifier extends StateNotifier<SettingsState> {
  final StoolRepository _stoolRepository;
  bool _showBloodOption = false;

  SettingsNotifier(this._stoolRepository)
      : super(const SettingsState.initial());

  // Get the existing data from the repository
  Future<void> initialise() async {
    final prefs = await SharedPreferences.getInstance();

    _showBloodOption = prefs.getBool(bloodSettingKey) ?? false;

    state = SettingsState.initialised(_showBloodOption);
  }

  Future<void> setBloodOption(bool value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(bloodSettingKey, value);

    _showBloodOption = value;

    state = SettingsState.initialised(_showBloodOption);
  }

  Future<void> deleteAllData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    final result = await _stoolRepository.deleteAllStools();

    result.fold(
      (l) => state = const SettingsState.error(),
      (r) => state = const SettingsState.success(),
    );
  }
}
