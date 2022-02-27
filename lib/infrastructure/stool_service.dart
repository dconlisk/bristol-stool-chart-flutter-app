import 'package:bristol_stool_chart/infrastructure/sembast_database.dart';
import 'package:bristol_stool_chart/infrastructure/stool_dto.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_service.dart';
import 'package:sembast/sembast.dart';
import 'package:sqflite/sqflite.dart';

class StoolLocalService implements IStoolService {
  final SembastDatabase _sembastDatabase;

  // Store stools with auto-generated int key
  final _store = intMapStoreFactory.store('stools');

  StoolLocalService(this._sembastDatabase);

  @override
  Future<void> addStool(StoolDto stool) async {
    await _store.add(
      _sembastDatabase.instance,
      stool.toJson(),
    );
  }

  @override
  Future<void> deleteAllStools() async {
    await _store.delete(_sembastDatabase.instance);
  }

  @override
  Future<List<StoolDto>> getAllStools() async {
    final snapshots = await _store.find(_sembastDatabase.instance);
    return snapshots.map((e) => StoolDto.fromJson(e.value)).toList();
  }

  @override
  Stream<List<StoolDto>> watchStools() {
    return _store.query().onSnapshots(_sembastDatabase.instance).map((stools) {
      final results = stools.map((e) => StoolDto.fromJson(e.value)).toList();
      results.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      return results;
    });
  }

  @override
  Future<bool> importOldDatabase() async {
    final oldDatabaseDirectory = await getDatabasesPath();
    final oldDatabaseFilePath = '$oldDatabaseDirectory/events.db';

    final dbExists = await databaseExists(oldDatabaseFilePath);

    if (dbExists) {
      final oldDatabase = await openDatabase(oldDatabaseFilePath);

      if (oldDatabase.isOpen) {
        final data = await oldDatabase.query('events');
        await Future.wait(data.map((stool) => _importStool(stool)));
      }

      // Finally delete the old database file
      //await deleteDatabase(oldDatabaseFilePath);
    }

    return dbExists;
  }

  // Import a data item from the old database as a stool into our new database
  Future<void> _importStool(Map<String, dynamic> stoolData) async {
    try {
      final stool = StoolDto(
        type: int.parse(stoolData['stoolType'].toString()),
        dateTime: DateTime.parse(stoolData['dateTime'].toString()),
        hasBlood: stoolData['bloodInStool'].toString() == '1',
      );
      await addStool(stool);
    } catch (e) {
      // silently fail to import any item that causes an exception
    }
  }
}
