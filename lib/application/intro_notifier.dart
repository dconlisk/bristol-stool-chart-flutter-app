import 'package:bristol_stool_chart/infrastructure/i_stool_repository.dart';
import 'package:bristol_stool_chart/infrastructure/keys.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'intro_notifier.freezed.dart';

@freezed
class IntroState with _$IntroState {
  const IntroState._();
  const factory IntroState.initial() = _Initial;
  const factory IntroState.hasSeenIntro() = _HasSeenIntro;
  const factory IntroState.hasNotSeenIntro() = _HasNotSeenIntro;
}

class IntroNotifier extends StateNotifier<IntroState> {
  final IStoolRepository _stoolRepository;

  IntroNotifier(
    this._stoolRepository,
  ) : super(const IntroState.initial());

  // Check the user's shared preferences to see if they have viewed the intro yet or not
  Future<void> initialise() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final hasSeenIntro =
        prefs.getBool(sharedPreferencesHasSeenIntroKey) ?? false;

    // TODO: import data from older version of the app
    await _stoolRepository.importOldDatabase();

    state = hasSeenIntro
        ? const IntroState.hasSeenIntro()
        : const IntroState.hasNotSeenIntro();
  }
}
