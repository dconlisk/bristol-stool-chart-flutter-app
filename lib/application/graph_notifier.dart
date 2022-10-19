import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bristol_stool_chart/application/shared_preferences_keys.dart';
import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:bristol_stool_chart/infrastructure/i_file_system_repository.dart';
import 'package:bristol_stool_chart/infrastructure/i_stool_repository.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'graph_notifier.freezed.dart';

@freezed
class GraphState with _$GraphState {
  const GraphState._();
  const factory GraphState.initial() = _Initial;
  const factory GraphState.initialised(List<Stool> stools) = _Initialised;
  const factory GraphState.loadFailure() = _LoadFailure;
  const factory GraphState.shareFailure() = _ShareFailure;
  const factory GraphState.shareSuccess() = _ShareSuccess;
}

class GraphNotifier extends StateNotifier<GraphState> {
  final IStoolRepository _stoolRepository;
  final IFileSystemRepository _fileSystemRepository;

  GraphNotifier(
    this._stoolRepository,
    this._fileSystemRepository,
  ) : super(const GraphState.initial());

  // Get the existing data from the repository
  Future<void> initialise() async {
    final failureOrStools = await _stoolRepository.getAllStools();

    state = failureOrStools.fold(
      (failure) => const GraphState.loadFailure(),
      (stools) => GraphState.initialised(stools),
    );
  }

  Future<void> share(BuildContext context, GlobalKey graphKey) async {
    try {
      final String shareDialogSubject =
          AppLocalizations.of(context)!.shareDialogSubject;
      final failureOrStools = await _stoolRepository.getAllStools();

      final stools = failureOrStools.fold((l) => null, (r) => r);

      if (stools == null) {
        state = const GraphState.shareFailure();
        return;
      }

      final imageData = await _getGraphAsBytes(graphKey: graphKey);

      final csvData = await _getCsvFrom(
        context: context,
        stools: stools,
      );

      if (imageData == null || csvData == null) {
        state = const GraphState.shareFailure();
        return;
      }

      final failureOrGraphImagePath =
          await _fileSystemRepository.writeBytesToFile(imageData);

      final failureOrCsvFilePath =
          await _fileSystemRepository.writeStringToFile(csvData);

      final graphImagePath =
          failureOrGraphImagePath.fold((l) => null, (r) => r);
      final csvFilePath = failureOrCsvFilePath.fold((l) => null, (r) => r);

      if (graphImagePath == null || csvFilePath == null) {
        state = const GraphState.shareFailure();
        return;
      }

      await Share.shareXFiles(
        [XFile(graphImagePath), XFile(csvFilePath)],
        subject: shareDialogSubject,
        sharePositionOrigin: Rect.fromCenter(
          center: const Offset(100, 100),
          width: 200,
          height: 100,
        ),
      );

      state = const GraphState.shareSuccess();
      state = GraphState.initialised(stools);
    } catch (e) {
      state = const GraphState.shareFailure();
    }
  }

  // Listen to a stream of data from the database and emit state every time there's a change in the DB
  void watchStools() {
    _stoolRepository.watchStools().listen((data) {
      state = GraphState.initialised(data);
    }, onError: (Object error) {
      state = const GraphState.loadFailure();
    });
  }

  // https://medium.com/flutter-community/export-your-widget-to-image-with-flutter-dc7ecfa6bafb
  Future<Uint8List?> _getGraphAsBytes({required GlobalKey graphKey}) async {
    try {
      final boundary =
          graphKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

      final image = await boundary.toImage(pixelRatio: 1.0);
      final byteData = await image.toByteData(format: ImageByteFormat.png);
      return byteData!.buffer.asUint8List();
    } catch (e) {
      return null;
    }
  }

  Future<String?> _getCsvFrom({
    required BuildContext context,
    required List<Stool> stools,
  }) async {
    try {
      final localizations = AppLocalizations.of(context)!;
      final prefs = await SharedPreferences.getInstance();
      final showBloodOption =
          prefs.getBool(sharedPreferencesBloodSettingKey) ?? false;

      var rows = stools
          .map(
            (stool) => showBloodOption
                ? '${DateFormat(localizations.dateTimeFormatFull).format(stool.dateTime)},${stool.type}, ${stool.hasBlood ? localizations.dataYesIndicator : localizations.dataNoIndicator}'
                : '${DateFormat(localizations.dateTimeFormatFull).format(stool.dateTime)},${stool.type}',
          )
          .toList();

      rows.insert(
        0,
        showBloodOption
            ? '${localizations.dataDateTimeHeader},${localizations.dataTypeHeader},${localizations.dataBloodHeader}'
            : '${localizations.dataDateTimeHeader},${localizations.dataTypeHeader}',
      );

      final lineSeparator = Platform.isAndroid ? '\r\n' : '\n';
      return rows
          .fold(
            '',
            (prev, element) => '$prev$lineSeparator$element',
          )
          .trim();
    } catch (e) {
      return null;
    }
  }
}
