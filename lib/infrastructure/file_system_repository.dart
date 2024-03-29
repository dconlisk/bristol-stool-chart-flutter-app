import 'dart:io';
import 'dart:typed_data';

import 'package:bristol_stool_chart/domain/stool_failure.dart';
import 'package:bristol_stool_chart/infrastructure/i_file_system_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class FileSystemRepository implements IFileSystemRepository {
  @override
  Future<Either<StoolFailure, String>> writeBytesToFile(Uint8List data) async {
    try {
      final directory = await getTemporaryDirectory();
      var attachmentFilename =
          'BristolStoolChartGraph_${DateFormat('yyyyMMddHHmm').format(DateTime.now())}.png';
      final imageFile = File('${directory.path}/$attachmentFilename');
      await imageFile.writeAsBytes(data);
      return Right(imageFile.path);
    } catch (e) {
      return const Left(StoolFailure.fileSystem());
    }
  }

  @override
  Future<Either<StoolFailure, String>> writeStringToFile(String data) async {
    try {
      final directory = await getTemporaryDirectory();
      var attachmentFilename =
          'BristolStoolChartData_${DateFormat('yyyyMMddHHmm').format(DateTime.now())}.csv';
      final csvFile = File('${directory.path}/$attachmentFilename');
      await csvFile.writeAsString(data);
      return Right(csvFile.path);
    } catch (e) {
      return const Left(StoolFailure.fileSystem());
    }
  }
}
