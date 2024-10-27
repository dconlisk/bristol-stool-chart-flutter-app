import 'package:bristol_stool_chart/infrastructure/sembast_database.dart';
import 'package:bristol_stool_chart/infrastructure/stool_dto.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_service.dart';
import 'package:sembast/sembast.dart';

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
  Future<void> editStoolByDateTime(StoolDto stool) async {
    await _store.update(
      _sembastDatabase.instance,
      stool.toJson(),
      finder: Finder(
        filter: Filter.custom((record) {
          // Use the datetime of the stool as the unique key, but convert to a string first and then compare.
          final recordDateTime = DateTime.parse(record['dateTime'] as String);
          return recordDateTime.isAtSameMomentAs(stool.dateTime);
        }),
      ),
    );
  }

  @override
  Future<void> editStool(StoolDto stool) async {
    await _store.update(
      _sembastDatabase.instance,
      stool.toJson(),
      finder: Finder(
        filter: Filter.equals('uuid', stool.uuid),
      ),
    );
  }

  @override
  Future<void> deleteStool(StoolDto stool) async {
    await _store.delete(
      _sembastDatabase.instance,
      finder: Finder(
        filter: Filter.custom((record) {
          // Use the datetime of the stool as the unique key, but convert to a string first and then compare.
          final recordDateTime = DateTime.parse(record['dateTime'] as String);
          return recordDateTime.isAtSameMomentAs(stool.dateTime);
        }),
      ),
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
  Future<StoolDto?> getStool(String id) async {
    final finder = Finder(
      filter: Filter.equals('uuid', id),
    );

    final snapshot =
        await _store.findFirst(_sembastDatabase.instance, finder: finder);
    return snapshot != null ? StoolDto.fromJson(snapshot.value) : null;
  }

  @override
  Stream<List<StoolDto>> watchStools() {
    return _store.query().onSnapshots(_sembastDatabase.instance).map((stools) {
      final results = stools.map((e) => StoolDto.fromJson(e.value)).toList();
      results.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      return results;
    });
  }
}
