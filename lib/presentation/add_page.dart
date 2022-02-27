import 'package:auto_route/auto_route.dart';
import 'package:bristol_stool_chart/application/add_stool_notifier.dart';
import 'package:bristol_stool_chart/presentation/styles/app_formats.dart';
import 'package:bristol_stool_chart/presentation/styles/app_padding.dart';
import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddPage extends ConsumerStatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
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
        title: const Text('Add Stool'),
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
                    title: const Text('An error occurred'),
                    content: const Text(
                        'Your stool was not saved successfully. Please try again later.'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('OK'),
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
                  const SnackBar(
                    content: Text('Stool added successfully!'),
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
              return Center(
                child: Column(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: [
                          Image.asset('assets/images/stooltype1.jpg'),
                          Image.asset('assets/images/stooltype2.jpg'),
                          Image.asset('assets/images/stooltype3.jpg'),
                          Image.asset('assets/images/stooltype4.jpg'),
                          Image.asset('assets/images/stooltype5.jpg'),
                          Image.asset('assets/images/stooltype6.jpg'),
                          Image.asset('assets/images/stooltype7.jpg'),
                        ],
                        options: CarouselOptions(
                          initialPage: 3,
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
                    ),
                    if (state.showBloodOption)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Was there blood in the stool?'),
                          Switch(
                            value: state.stool.hasBlood,
                            onChanged: (hasBlood) async {
                              await ref
                                  .read(addStoolNotifierProvider.notifier)
                                  .updateStool(
                                      state.stool.copyWith(hasBlood: hasBlood));
                            },
                          ),
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.all(60),
                      child: DateTimePicker(
                        firstDate: DateTime.now().toLocal().subtract(
                              const Duration(days: 30),
                            ),
                        lastDate: DateTime.now().toLocal(),
                        initialDate: DateTime.now().toLocal(),
                        initialValue: 'Now (or click to select a date)',
                        dateMask: AppFormats.dateAndTime,
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
                      child: const Text('SAVE'),
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
