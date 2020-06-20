import 'dart:developer' as developer;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DbHelper {
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'events.db'),
        onCreate: (newlyCreatedDb, version) {
      return newlyCreatedDb.execute(
          'CREATE TABLE events(id TEXT PRIMARY KEY, stoolType INTEGER, dateTime TEXT, bloodInStool INTEGER)');
    }, version: 1);
  }

  static Future<bool> importDataFromOlderAppVersionIfAny() async {
    try {
      String oldDbPath;

      if (Platform.isAndroid) {
        oldDbPath = '/data/data/uk.co.webgarden.BristolStoolChart/stools';
      } else {
        final appleDocDir = await getApplicationDocumentsDirectory();
        oldDbPath = '/${appleDocDir.path}/stools.db';
      }

      if (await sql.databaseExists(oldDbPath)) {
        developer.log('The database exists at $oldDbPath');
        // Okay we have data from the old app. Read it and insert into our new db.
        var oldDatabase = await sql.openDatabase(oldDbPath);

        if (oldDatabase.isOpen) {
          developer.log('The database is open');
          var data = await oldDatabase.query('Stools');
          data.forEach((oldStool) => {importEvent(oldStool)});

          // Now delete the old db for good
          await sql.deleteDatabase(oldDbPath);
        }
      } else {
        developer.log('\nNo pre-existing database found at $oldDbPath');
      }
      return true;
    }
    catch (e) {
      // Just fail silently if we are unable to import the existing data
      return false;
    }
  }

  static void importEvent(Map<String, dynamic> oldStool) {
    String dateString;

    if (Platform.isAndroid) {
      // Convert from Android sqlite timestamp
      var dateInDb = DateTime.fromMicrosecondsSinceEpoch(
          oldStool['ChosenDate'] ~/ 10,
          isUtc: true);
      var eventDate = DateTime(dateInDb.year - 1969, dateInDb.month,
          dateInDb.day, dateInDb.hour, dateInDb.minute, dateInDb.second);
      dateString = eventDate.toUtc().toIso8601String();
    } else {
      // iOS sensibly stores dates as strings
      var dateInDb = DateTime.parse(oldStool['ChosenDate']);
      var dateUtc = DateTime.utc(dateInDb.year, dateInDb.month, dateInDb.day,
          dateInDb.hour, dateInDb.minute, dateInDb.second);
      dateString = dateUtc.toIso8601String();
    }

    DbHelper.insert('events', {
      'id': DateTime.now().toString(),
      'stoolType': oldStool['BssValue'],
      'dateTime': dateString,
      'bloodInStool': 0,
    });
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DbHelper.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DbHelper.database();
    return db.query(table, orderBy: 'dateTime');
  }

  static Future<void> deleteAll(String table) async {
    final db = await DbHelper.database();
    db.delete(table);
  }
}
