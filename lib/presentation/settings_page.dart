import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/settings_notifier.dart';
import 'package:bristol_stool_chart/presentation/routes/app_router.gr.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/widgets/heading.dart';
import 'package:bristol_stool_chart/presentation/widgets/main_drawer.dart';
import 'package:bristol_stool_chart/presentation/widgets/paragraph.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
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
        title: Text(AppLocalizations.of(context)!.settingsPageTitle),
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
                    title:
                        Text(AppLocalizations.of(context)!.errorOccurredTitle),
                    content: Text(
                      AppLocalizations.of(context)!
                          .dataNotRemovedErrorOccurredMessage,
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text(
                          AppLocalizations.of(context)!.continueButtonText,
                        ),
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
                    title: Text(AppLocalizations.of(context)!.dataRemovedTitle),
                    content:
                        Text(AppLocalizations.of(context)!.dataRemovedMessage),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text(
                            AppLocalizations.of(context)!.continueButtonText),
                        onPressed: () {
                          context.router.pushAndPopUntil(
                            const IntroRoute(),
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
            initialised: (initialisedState) => SafeArea(
              child: SingleChildScrollView(
                padding: AppPadding.smallHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading(
                      text: AppLocalizations.of(context)!.bloodCheckHeading,
                    ),
                    Paragraph(
                      text: AppLocalizations.of(context)!.bloodCheckParagraph,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.bloodCheckToggleLabel,
                            style: Theme.of(context).textTheme.subtitle1,
                            softWrap: true,
                          ),
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
                    Heading(
                      text: AppLocalizations.of(context)!.removeDataHeading,
                    ),
                    Paragraph(
                      text: AppLocalizations.of(context)!.removeDataParagraph,
                    ),
                    AppPadding.sizedBoxVerticalSmall,
                    ElevatedButton(
                      child: Text(
                          AppLocalizations.of(context)!.removeDataButtonText),
                      onPressed: () async {
                        await showDialog<AlertDialog>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text(
                              AppLocalizations.of(context)!.areYouSureTitle,
                            ),
                            content: Text(
                              AppLocalizations.of(context)!
                                  .areYouSureDeleteDataMessage,
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () async {
                                  await context.router.pop();
                                },
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .cancelButtonText,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  await context.router.pop();
                                  await ref
                                      .read(settingsNotifierProvider.notifier)
                                      .deleteAllData();
                                },
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .deleteAllDataButtonText,
                                ),
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
