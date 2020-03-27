import 'dart:convert';

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
      'id': event.dateTime.toString(),
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
            type: item['type'],
            dateTime: DateTime.parse(item['dateTime']),
          ),
        )
        .toList();
    notifyListeners();
  }
}
