import 'package:flutter/material.dart';

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
    await DbHelper.insert('events', {
      'id': event.id,
      'stoolType': event.type,
      'dateTime': event.dateTime.toIso8601String(),
      'bloodInStool': event.bloodInStool ? 1 : 0,
    });
  }

  Future<void> fetchAndSetEvents() async {
    _events = await _getAllEvents();
    notifyListeners();
  }

  Future<List<Event>> _getAllEvents() async {
    final dataList = await DbHelper.getData('events');
    return dataList
        .map(
          (item) => Event(
            id: item['id'],
            type: item['stoolType'],
            dateTime: DateTime.parse(item['dateTime']),
            bloodInStool: item['bloodInStool'] > 0,
          ),
        )
        .toList();
  }

  Future<void> deleteAll() async {
    await DbHelper.deleteAll('events');
  }
}
