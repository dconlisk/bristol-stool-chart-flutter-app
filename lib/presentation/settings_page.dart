import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/settings_notifier.dart';
import 'package:bristol_stool_chart/presentation/styles/app_sizes.dart';
import 'package:bristol_stool_chart/presentation/styles/app_text_styles.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  void initState() {
    super.initState();
    ref.read(settingsNotifierProvider.notifier).initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const MainDrawer(),
      body: Consumer(
        builder: (context, ref, child) {
          ref.listen<SettingsState>(settingsNotifierProvider, (_, state) {
            state.whenOrNull(
              error: () async {
                await showDialog<AlertDialog>(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('An error occurred'),
                    content: const Text(
                        'There was a problem removing your data. Please try again later.'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('OK'),
                        onPressed: () {
                          context.router.pop();
                        },
                      )
                    ],
                  ),
                );
              },
              success: () async {
                await showDialog<AlertDialog>(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Data deleted'),
                    content:
                        const Text('Your data was removed from the device.'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('OK'),
                        onPressed: () {
                          context.router.pushAndPopUntil(
                            IntroRoute(),
                            predicate: (route) => false,
                          );
                        },
                      )
                    ],
                  ),
                );
              },
            );
          });
          final settingsState = ref.watch(settingsNotifierProvider);
          return settingsState.maybeMap(
            orElse: () => const SizedBox.shrink(),
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            initialised: (initialisedState) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.regular,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        const Heading(
                          text: 'Enable blood check?',
                        ),
                        Switch(
                          value: initialisedState.showBloodOption,
                          onChanged: (value) {
                            ref
                                .read(settingsNotifierProvider.notifier)
                                .setBloodOption(value);
                          },
                        ),
                      ],
                    ),
                    Text(
                      'You can record whenever you have blood in your stool by enabling this feature. This will add a "blood in stool?" checkbox to the add screen. Any stools that have blood in them will '
                      'be displayed in red on the graph.',
                      style: AppTextStyles.paragraph,
                    ),
                    const Heading(
                      text: 'Remove all data',
                    ),
                    Text(
                      'You can remove all data from the app and start again with a clean sheet. Simply tap the Delete Data button, below.',
                      style: AppTextStyles.paragraph,
                    ),
                    ElevatedButton(
                      child: const Text('DELETE DATA'),
                      onPressed: () async {
                        await showDialog<AlertDialog>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Are you sure?'),
                            content: const Text(
                                'All of your existing stool data will be permanently removed. Do you wish to continue?'),
                            actions: [
                              ElevatedButton(
                                onPressed: () async {
                                  await context.router.pop();
                                },
                                child: const Text('CANCEL'),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  await context.router.pop();
                                  await ref
                                      .read(settingsNotifierProvider.notifier)
                                      .deleteAllData();
                                },
                                child: const Text('DELETE ALL DATA'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
