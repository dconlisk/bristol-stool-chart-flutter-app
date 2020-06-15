import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';

class FileHelper {
  static Future<String> writeStringToFile(
      BuildContext context, String data) async {
    final directory = await getTemporaryDirectory();
    var attachmentFilename =
        'BristolStoolChartData_${DateFormat('yyyyMMddHHmm').format(DateTime.now())}.csv';
    final csvFile = File('${directory.path}/$attachmentFilename');
    print(csvFile.path);
    await csvFile.writeAsString(data);
    return csvFile.path;
  }

  static Future<String> writeBytesToFile(
      BuildContext context, Uint8List bytes) async {
    final directory = await getTemporaryDirectory();
    var attachmentFilename =
        'BristolStoolChartGraph_${DateFormat('yyyyMMddHHmm').format(DateTime.now())}.png';
    final csvFile = File('${directory.path}/$attachmentFilename');
    print(csvFile.path);
    await csvFile.writeAsBytes(bytes);
    return csvFile.path;
  }
}
