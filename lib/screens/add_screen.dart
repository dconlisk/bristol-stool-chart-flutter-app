import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';

import '../models/event.dart';
import '../providers/event_provider.dart';
import '../widgets/main_drawer.dart';

class AddScreen extends StatefulWidget {
  static const routeName = '/add';
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  var _selectedType = 3;

  // Treat all datetimes as local in the app, so that daylight savings doesn't affect the graph
  var _selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  var _selectedTime =
      TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: _selectedDate.add(Duration(days: -365)),
        lastDate: _selectedDate);
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  Future<void> _save() async {
    var event = Event(
        id: DateTime.now().toString(),
        type: _selectedType,
        dateTime: _selectedDate.add(Duration(
          hours: _selectedTime.hour,
          minutes: _selectedTime.minute,
        )));

    var provider = EventProvider();

    await provider.addEvent(event);

    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Stool saved'),
            content: Text('Your stool was saved successfully'),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Add Stool')),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            child: CarouselSlider(
              initialPage: 3,
              enableInfiniteScroll: false,
              items: <Widget>[
                Image.asset('assets/images/stooltype1.jpg'),
                Image.asset('assets/images/stooltype2.jpg'),
                Image.asset('assets/images/stooltype3.jpg'),
                Image.asset('assets/images/stooltype4.jpg'),
                Image.asset('assets/images/stooltype5.jpg'),
                Image.asset('assets/images/stooltype6.jpg'),
                Image.asset('assets/images/stooltype7.jpg'),
              ],
              onPageChanged: (index) {
                _selectedType = index + 1;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Text(
                  DateFormat('dd MMMM yyyy').format(_selectedDate),
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () => _selectDate(context),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(' at '),
              ),
              GestureDetector(
                child: Text(
                  _selectedTime.format(context),
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () => _selectTime(context),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            child: Text('SAVE'),
            onPressed: _save,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
