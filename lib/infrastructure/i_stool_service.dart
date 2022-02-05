import 'package:bristol_stool_chart/infrastructure/stool_dto.dart';

abstract class IStoolService {
  // Add a stool to the database
  Future<void> addStool(StoolDto stool);

  // Remove all stools from the database
  Future<void> deleteAllStools();

  // Get a list of all stools in the database
  Future<List<StoolDto>> getAllStools();
}
