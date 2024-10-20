import 'package:freezed_annotation/freezed_annotation.dart';

part 'stool.freezed.dart';

@freezed
class Stool with _$Stool {
  const Stool._();

  const factory Stool({
    required int type,
    required DateTime dateTime,
    required bool hasBlood,
    required String notes,
  }) = _Stool;

  factory Stool.empty() => Stool(
        type: 4,
        dateTime: DateTime.now(),
        hasBlood: false,
        notes: '',
      );
}
