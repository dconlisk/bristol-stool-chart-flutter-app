import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'stool_dto.freezed.dart';
part 'stool_dto.g.dart';

@freezed
abstract class StoolDto with _$StoolDto {
  const StoolDto._();
  const factory StoolDto({
    String? uuid,
    required int type,
    required DateTime dateTime,
    required bool hasBlood,
    String?
        notes, // notes is nullable as users may have older data without notes
  }) = _StoolDto;

  factory StoolDto.fromDomain(Stool stool) {
    return StoolDto(
      uuid: stool.id.toString(),
      type: stool.type,
      dateTime: stool.dateTime,
      hasBlood: stool.hasBlood,
      notes: stool.notes,
    );
  }

  factory StoolDto.fromJson(Map<String, dynamic> json) =>
      _$StoolDtoFromJson(json);

  Stool toDomain() {
    return Stool(
      id: uuid ?? Uuid().v4().toString(),
      type: type,
      dateTime: dateTime,
      hasBlood: hasBlood,
      notes: notes ?? '',
    );
  }
}
