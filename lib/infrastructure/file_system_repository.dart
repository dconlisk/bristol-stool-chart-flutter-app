import 'dart:io';
import 'dart:typed_data';

import 'package:bristol_stool_chart/domain/stool_failure.dart';
import 'package:bristol_stool_chart/infrastructure/i_file_system_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:path_provider/path_provider.dart';

class FileSystemRepository implements IFileSystemRepository {
  @override
  Future<Either<StoolFailure, String>> writeBytesToFile(
      String filename, Uint8List data) async {
    try {
      final directory = await getTemporaryDirectory();
      final imageFile = File('${directory.path}/$filename');
      await imageFile.writeAsBytes(data);
      return Right(imageFile.path);
    } catch (e) {
      return const Left(StoolFailure.fileSystem());
    }
  }

  @override
  Future<Either<StoolFailure, String>> writeStringToFile(
      String filename, String data) async {
    try {
      final directory = await getTemporaryDirectory();
      final csvFile = File('${directory.path}/$filename');
      await csvFile.writeAsString(data);
      return Right(csvFile.path);
    } catch (e) {
      return const Left(StoolFailure.fileSystem());
    }
  }

  @override
  Future<Either<StoolFailure, bool>> removeFile(String filename) async {
    try {
      final directory = await getTemporaryDirectory();
      final imageFile = File('${directory.path}/$filename');
      await imageFile.delete();
      return Right(true);
    } catch (e) {
      return const Left(StoolFailure.fileSystem());
    }
  }
}
