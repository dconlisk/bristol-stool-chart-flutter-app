import 'package:bristol_stool_chart/infrastructure/stool_dto.dart';

abstract class IStoolService {
  // Add a stool to the database
  Future<void> addStool(StoolDto stool);

  // Edit a stool in the database using the datetime as a key. Only used to add a uuid to existing data that doesn't have one.
  Future<void> editStoolByDateTime(StoolDto stool);

  // Edit a stool in the database
  Future<void> editStool(StoolDto stool);

  // Remove a stool from the database
  Future<void> deleteStool(StoolDto stool);

  // Remove all stools from the database
  Future<void> deleteAllStools();

  // Get a list of all stools in the database
  Future<List<StoolDto>> getAllStools();

  // Get a stream of data from the database that contains all stools
  Stream<List<StoolDto>> watchStools();

  // Import data from previous version of the app if it exists. Return true if a previous version existed, false otherwise.
  Future<bool> importOldDatabase();
}
