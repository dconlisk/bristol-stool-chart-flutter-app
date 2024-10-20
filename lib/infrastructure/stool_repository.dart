import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/domain/stool_failure.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_repository.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_service.dart';
import 'package:bristol_stool_chart/infrastructure/stool_dto.dart';
import 'package:dartz/dartz.dart';

class StoolRepository implements IStoolRepository {
  final IStoolService _stoolService;

  StoolRepository(this._stoolService);

  @override
  Future<Either<StoolFailure, Unit>> addStool(Stool stool) async {
    try {
      await _stoolService.addStool(StoolDto.fromDomain(stool));
      return right(unit);
    } catch (e) {
      return left(const StoolFailure.database());
    }
  }

  @override
  Future<Either<StoolFailure, Unit>> editStool(Stool stool) async {
    try {
      await _stoolService.editStool(StoolDto.fromDomain(stool));
      return right(unit);
    } catch (e) {
      return left(const StoolFailure.database());
    }
  }

  @override
  Future<Either<StoolFailure, Unit>> deleteStool(Stool stool) async {
    try {
      await _stoolService.deleteStool(StoolDto.fromDomain(stool));
      return right(unit);
    } catch (e) {
      return left(const StoolFailure.database());
    }
  }

  @override
  Future<Either<StoolFailure, Unit>> deleteAllStools() async {
    try {
      await _stoolService.deleteAllStools();
      return right(unit);
    } catch (e) {
      return left(const StoolFailure.database());
    }
  }

  @override
  Future<Either<StoolFailure, List<Stool>>> getAllStools() async {
    try {
      final results = await _stoolService.getAllStools();
      results.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      return right(results.map((e) => e.toDomain()).toList());
    } catch (e) {
      return left(const StoolFailure.database());
    }
  }

  @override
  Future<Either<StoolFailure, Stool>> getStool(int index) async {
    try {
      final results = await _stoolService.getAllStools();
      results.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      return right(results.map((e) => e.toDomain()).toList()[index]);
    } catch (e) {
      return left(const StoolFailure.database());
    }
  }

  @override
  Stream<List<Stool>> watchStools() {
    final stream = _stoolService.watchStools();
    return stream.map((event) => event.map((e) => e.toDomain()).toList());
  }

  @override
  Future<Either<StoolFailure, bool>> importOldDatabase() async {
    try {
      final result = await _stoolService.importOldDatabase();
      return Right(result);
    } catch (e) {
      return const Left(StoolFailure.import());
    }
  }
}
