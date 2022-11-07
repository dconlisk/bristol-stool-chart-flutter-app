import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/add_stool_notifier.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddPage extends ConsumerStatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AddPage> createState() => _AddPageState();
}

class _AddPageState extends ConsumerState<AddPage> {
  @override
  void initState() {
    super.initState();
    ref.read(addStoolNotifierProvider.notifier).initialise();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.addStoolPageTitle,
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
                      AppLocalizations.of(context)!.stoolSavedSuccessMessage,
                    ),
                  ),
                );
                context.router.pop();
              },
            );
          });

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
                        initialPage: 3,
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
                                style: Theme.of(context).textTheme.subtitle1,
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
                      padding: AppPadding.regular,
                      child: DateTimePicker(
                        firstDate: DateTime.now().toLocal().subtract(
                              const Duration(days: 30),
                            ),
                        lastDate: DateTime.now().toLocal(),
                        initialDate: DateTime.now().toLocal(),
                        initialValue: AppLocalizations.of(context)!
                            .stoolPickerInitialDateValue,
                        dateMask:
                            AppLocalizations.of(context)!.dateTimePickerMask,
                        type: DateTimePickerType.dateTime,
                        onChanged: (date) async {
                          await ref
                              .read(addStoolNotifierProvider.notifier)
                              .updateStool(
                                state.stool.copyWith(
                                  dateTime:
                                      DateTime.tryParse(date) ?? DateTime.now(),
                                ),
                              );
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: AppPadding.borderRadius,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: Text(
                        AppLocalizations.of(context)!.saveButtonText,
                      ),
                      onPressed: () async {
                        await ref
                            .read(addStoolNotifierProvider.notifier)
                            .saveStool();
                      },
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
  const SliderImage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.regular,
      child: Image.asset('assets/images/stooltype$index.jpg'),
    );
  }
}
