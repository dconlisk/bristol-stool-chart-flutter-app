import 'dart:typed_data';

import 'package:bristol_stool_chart/domain/stool_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IFileSystemRepository {
  // Write a list of data to a file and return the path to the file
  Future<Either<StoolFailure, String>> writeBytesToFile(
    BuildContext context,
    Uint8List data,
  );

  // Write a string to a file and return the path to the file
  Future<Either<StoolFailure, String>> writeStringToFile(
    BuildContext context,
    String data,
  );
}
