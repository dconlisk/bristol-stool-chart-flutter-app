import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DbHelper {
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'events.db'),
        onCreate: (newlyCreatedDb, version) {
      return newlyCreatedDb.execute(
          'CREATE TABLE events(id TEXT PRIMARY KEY, stoolType INTEGER, dateTime TEXT)');
    }, version: 1);
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
