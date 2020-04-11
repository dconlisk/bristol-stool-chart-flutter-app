import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';

class FileHelper {
    static Future<String> writeCsvToFile(BuildContext context, String csvData) async {
    final directory = await getTemporaryDirectory();
    var attachmentFilename = 'BristolStoolChartData_${DateFormat('yyyyMMddHHmm').format(DateTime.now())}.csv';
    final csvFile = File('${directory.path}/$attachmentFilename');
    print(csvFile.path);
    await csvFile.writeAsString(csvData);
    return csvFile.path;
    }
}