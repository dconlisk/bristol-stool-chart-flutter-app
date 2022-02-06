import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Stool'),
        automaticallyImplyLeading: false,
        actions: const [
          CloseButton(),
        ],
      ),
      body: Center(
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
          options: CarouselOptions(onPageChanged: (index, reason) {
            // TODO: Store in state: _selectedType = index + 1;
          }),
        ),
      ),
    );
  }
}
