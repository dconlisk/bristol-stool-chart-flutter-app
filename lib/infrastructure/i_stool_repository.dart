import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/domain/stool_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IStoolRepository {
  // Add a stool
  Future<Either<StoolFailure, Unit>> addStool(Stool stool);

  // Delete all stools
  Future<Either<StoolFailure, Unit>> deleteAllStools();

  // Get all stools
  Future<Either<StoolFailure, List<Stool>>> getAllStools();

  // Get a stream of data from the service that contains all stools
  Stream<List<Stool>> watchStools();
}
