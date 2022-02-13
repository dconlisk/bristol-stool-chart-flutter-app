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
}
