import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/event.dart';
import '../helpers/db_helper.dart';

class EventProvider with ChangeNotifier {
  List<Event> _events = [];

  List<Event> get events {
    return [..._events];
  }

  Future<void> addEvent(Event event) async {
    _events.add(event);
    notifyListeners();
    print(event.dateTime.toString());
    print(event.dateTime.toIso8601String());
    await DbHelper.insert('events', {
      'id': event.id,
      'stoolType': event.type,
      'dateTime': event.dateTime.toIso8601String(),
    });
  }

  Future<void> fetchAndSetEvents() async {
    final dataList = await DbHelper.getData('events');
    _events = dataList
        .map(
          (item) => Event(
            id: item['id'],
            type: item['stoolType'],
            dateTime: DateTime.parse(item['dateTime']),
          ),
        )
        .toList();
    notifyListeners();
  }

  Future<String> getDataAsCsv() async {
    var dataList = await DbHelper.getData('events');
    var events = dataList
        .map(
          (item) => Event(
            id: item['id'],
            type: item['stoolType'],
            dateTime: DateTime.parse(item['dateTime']),
          ),
        )
        .toList();
    var rows = events.map((e) => '${DateFormat('dd/MM/yyyy H:mm:ss').format(e.dateTime)},${e.type}');
    return rows.fold('', (prev, element) => '$prev\r\n$element');
  }

  Future<void> deleteAll() async {
    await DbHelper.deleteAll('events');
  }
}
