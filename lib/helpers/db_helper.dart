import 'dart:developer' as developer;
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
    //final databasesPath = await sql.getDatabasesPath();
    //developer.log('The standard databases path is $databasesPath');
    //var oldDbPath = path.join(databasesPath, 'stools');
    var oldDbPath = '/data/data/uk.co.webgarden.BristolStoolChart/stools';

    if (await sql.databaseExists(oldDbPath)) {
      developer.log('The database exists at $oldDbPath');
      // Okay we have data from the old app. Read it and insert into our new db.
      var oldDatabase = await sql.openDatabase(oldDbPath);

      if (oldDatabase.isOpen) {
        developer.log('The database is open');
        var data = await oldDatabase.query('Stools');
        data.forEach((oldStool) => {importEvent(oldStool)});

        // Now delete the old db for good
        //await sql.deleteDatabase(oldDbPath);
      }
    } else {
      developer.log('No pre-existing database found at $oldDbPath');
    }
    return false;
  }

  static void importEvent(Map<String, dynamic> oldStool) {
    developer.log('\nSTOOL:$oldStool');
    developer.log('\nBSS Value:${oldStool['BssValue']}');
    developer.log('\nChosen Date:${oldStool['ChosenDate']}');
    developer.log('\nChosen Date as string:${DateTime.fromMillisecondsSinceEpoch(oldStool['ChosenDate']~/1000000000 + 978307200)}\n');
    DbHelper.insert('events', {
      'id': DateTime.now().toString(),
      'stoolType': oldStool['BssValue'],
      'dateTime': DateTime.fromMillisecondsSinceEpoch(oldStool['ChosenDate'])
          .toIso8601String(),
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
