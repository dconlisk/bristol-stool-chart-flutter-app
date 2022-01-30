import 'package:freezed_annotation/freezed_annotation.dart';

part 'stool.freezed.dart';

@freezed
class Stool with _$Stool {
  const Stool._();

  const factory Stool({
    required String id,
    required int type,
    required DateTime dateTime,
    required bool bloodInStool,
  }) = _Stool;
}
