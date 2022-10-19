import 'dart:typed_data';

import 'package:bristol_stool_chart/domain/stool_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IFileSystemRepository {
  // Write a list of data to a file and return the path to the file
  Future<Either<StoolFailure, String>> writeBytesToFile(Uint8List data);

  // Write a string to a file and return the path to the file
  Future<Either<StoolFailure, String>> writeStringToFile(String data);
}
