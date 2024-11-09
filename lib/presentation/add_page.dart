import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/add_stool_notifier.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/presentation/widgets/carousel_swipe_indicator.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

@RoutePage()
class AddPage extends ConsumerStatefulWidget {
  final String? stoolId;
  const AddPage({super.key, this.stoolId});

  @override
  ConsumerState<AddPage> createState() => _AddPageState();
}

class _AddPageState extends ConsumerState<AddPage> {
  @override
  void initState() {
    super.initState();
    ref.read(addStoolNotifierProvider.notifier).initialise(widget.stoolId);
  }

  @override
  Widget build(context) {
    final isEdit = widget.stoolId != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEdit
              ? AppLocalizations.of(context)!.editStoolPageTitle
              : AppLocalizations.of(context)!.addStoolPageTitle,
        ),
        automaticallyImplyLeading: false,
        actions: const [
          CloseButton(),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          ref.listen<AddStoolState>(addStoolNotifierProvider, (_, state) {
            state.whenOrNull(
              error: (stool, showBloodOption) async {
                await showDialog<AlertDialog>(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(
                      AppLocalizations.of(context)!.errorOccurredTitle,
                    ),
                    content: Text(
                      AppLocalizations.of(context)!
                          .stoolNotSavedErrorOccurredMessage,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text(
                          AppLocalizations.of(context)!.continueButtonText,
                        ),
                        onPressed: () {
                          context.router.popUntilRoot();
                        },
                      )
                    ],
                  ),
                );
              },
              success: (stool, showBloodOption) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      isEdit
                          ? AppLocalizations.of(context)!
                              .stoolEditedSuccessMessage
                          : AppLocalizations.of(context)!
                              .stoolSavedSuccessMessage,
                    ),
                  ),
                );

                context.router.popForced();
              },
            );
          });

          final formatter =
              DateFormat(AppLocalizations.of(context)!.dateTimeFormatVerbose);

          final addStoolState = ref.watch(addStoolNotifierProvider);
          return addStoolState.maybeMap(
            orElse: () => const SizedBox.shrink(),
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            initialised: (state) {
              return SingleChildScrollView(
                padding: AppPadding.smallHorizontal,
                child: Column(
                  children: [
                    Stack(children: [
                      CarouselSlider(
                        items: const [
                          SliderImage(index: 1),
                          SliderImage(index: 2),
                          SliderImage(index: 3),
                          SliderImage(index: 4),
                          SliderImage(index: 5),
                          SliderImage(index: 6),
                          SliderImage(index: 7),
                        ],
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height / 2,
                          initialPage: state.stool.type - 1,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) async {
                            await ref
                                .read(addStoolNotifierProvider.notifier)
                                .updateStool(
                                  state.stool.copyWith(
                                    type: index + 1,
                                  ),
                                );
                          },
                        ),
                      ),
                      if (state.stool.type == 4)
                        Positioned.fill(
                          child: Center(
                            child: CarouselSwipeIndicator(
                              color: Colors.black,
                              showDuration: Duration(seconds: 3),
                            ),
                          ),
                        ),
                    ]),
                    if (state.showBloodOption)
                      Padding(
                        padding: AppPadding.regularHorizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                AppLocalizations.of(context)!
                                    .bloodCheckLabelText,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            Switch(
                              value: state.stool.hasBlood,
                              onChanged: (hasBlood) async {
                                await ref
                                    .read(addStoolNotifierProvider.notifier)
                                    .updateStool(state.stool
                                        .copyWith(hasBlood: hasBlood));
                              },
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: AppPadding.regularHorizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: AppLocalizations.of(context)!
                                    .notesLabelText,
                                hintText: AppLocalizations.of(context)!
                                    .notesPlaceholderText,
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 3,
                              initialValue: state.stool.notes,
                              onTapOutside: (event) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              onChanged: (value) async {
                                await ref
                                    .read(addStoolNotifierProvider.notifier)
                                    .updateStool(
                                      state.stool.copyWith(
                                        notes: value,
                                      ),
                                    );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: AppPadding.small,
                      child: ElevatedButton(
                        onPressed: () {
                          DatePicker.showDateTimePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime.now().toLocal().subtract(
                                  const Duration(days: 30),
                                ),
                            maxTime: DateTime.now().toLocal().add(
                                  const Duration(minutes: 1),
                                ),
                            onConfirm: (date) async {
                              await ref
                                  .read(addStoolNotifierProvider.notifier)
                                  .updateStool(
                                    state.stool.copyWith(
                                      dateTime: date,
                                    ),
                                  );
                            },
                            currentTime: state.stool.dateTime.toLocal(),
                            locale: LocaleType.en,
                          );
                        },
                        child: Text(
                          formatter.format(state.stool.dateTime.toLocal()),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: AppPadding.small,
                          child: ElevatedButton(
                            child: Text(
                              AppLocalizations.of(context)!.saveButtonText,
                            ),
                            onPressed: () async {
                              if (isEdit) {
                                await ref
                                    .read(addStoolNotifierProvider.notifier)
                                    .editStool();
                              } else {
                                await ref
                                    .read(addStoolNotifierProvider.notifier)
                                    .addStool();
                              }
                            },
                          ),
                        ),
                        if (isEdit)
                          Padding(
                            padding: AppPadding.regular,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () async {
                                await showDialog<AlertDialog>(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text(
                                      AppLocalizations.of(context)!
                                          .areYouSureTitle,
                                    ),
                                    content: Text(
                                      AppLocalizations.of(context)!
                                          .areYouSureDeleteStoolMessage,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          context.router.popForced();
                                        },
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .cancelButtonText,
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        onPressed: () async {
                                          context.router.popForced();
                                          await ref
                                              .read(addStoolNotifierProvider
                                                  .notifier)
                                              .deleteStool();
                                        },
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .deleteStoolButtonText,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context)!.deleteButtonText,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  final int index;
  const SliderImage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.regular,
      child: Image.asset('assets/images/stooltype$index.jpg'),
    );
  }
}
