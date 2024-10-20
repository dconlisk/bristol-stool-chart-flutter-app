import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stool_dto.freezed.dart';
part 'stool_dto.g.dart';

@freezed
class StoolDto with _$StoolDto {
  const StoolDto._();
  const factory StoolDto({
    required int type,
    required DateTime dateTime,
    required bool hasBlood,
    String?
        notes, // notes is nullable as users may have older data without notes
  }) = _StoolDto;

  factory StoolDto.fromDomain(Stool stool) {
    return StoolDto(
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
      type: type,
      dateTime: dateTime,
      hasBlood: hasBlood,
      notes: notes ?? '',
    );
  }
}
