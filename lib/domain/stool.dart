import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'stool.freezed.dart';

@freezed
abstract class Stool with _$Stool {
  const Stool._();

  const factory Stool({
    required String id,
    required int type,
    required DateTime dateTime,
    required bool hasBlood,
    required String notes,
  }) = _Stool;

  factory Stool.empty() => Stool(
        id: Uuid().v4().toString(),
        type: 4,
        dateTime: DateTime.now(),
        hasBlood: false,
        notes: '',
      );
}
