import 'package:bristol_stool_chart/infrastructure/i_stool_repository.dart';
import 'package:bristol_stool_chart/application/shared_preferences_keys.dart';
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
  const factory IntroState.updateFailed() = _UpdateFailed;
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

    // Ensure all stools have a UUID (check existing data and add UUIDs if they are missing)
    final result = await _stoolRepository.initialiseUuids();

    result.fold((failure) {
      // Alert the user if there was a problem importing their old data, and show the intro (i.e. full app reset)
      state = const IntroState.updateFailed();
      //state = const IntroState.hasNotSeenIntro();
    }, (dataWasUpdated) {
      if (dataWasUpdated) {
        // If the user had data, then don't show the intro to them again
        prefs.setBool(sharedPreferencesHasSeenIntroKey, true);
        state = const IntroState.hasSeenIntro();
      } else {
        // If there was no data, then just act based on shared preferences
        state = hasSeenIntro
            ? const IntroState.hasSeenIntro()
            : const IntroState.hasNotSeenIntro();
      }
    });
  }
}
