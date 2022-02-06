import 'package:bristol_stool_chart/shared/providers.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
          final addStoolState = ref.watch(addStoolNotifierProvider);
          return addStoolState.map(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            initialised: (state) {
              return Center(
                child: Column(
                  children: [
                    CarouselSlider(
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
                        onPageChanged: (index, reason) {
                          // TODO: Store in state: _selectedType = index + 1;
                        },
                      ),
                    ),
                    if (!state.showBloodOption)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Was there blood in the stool?'),
                          Switch(
                              value: state.stool.hasBlood,
                              onChanged: (hasBlood) {
                                ref
                                    .read(addStoolNotifierProvider.notifier)
                                    .setBlood(hasBlood);
                              }),
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
