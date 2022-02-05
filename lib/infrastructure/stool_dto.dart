import 'package:bristol_stool_chart/domain/stool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stool_dto.freezed.dart';
part 'stool_dto.g.dart';

@freezed
class StoolDto with _$StoolDto {
  const StoolDto._();
  const factory StoolDto({
    required String id,
    required int type,
    required DateTime dateTime,
    required bool hasBlood,
  }) = _StoolDto;

  factory StoolDto.fromDomain(Stool stool) {
    return StoolDto(
      id: stool.id,
      type: stool.type,
      dateTime: stool.dateTime,
      hasBlood: stool.hasBlood,
    );
  }

  factory StoolDto.fromJson(Map<String, dynamic> json) =>
      _$StoolDtoFromJson(json);

  Stool toDomain() {
    return Stool(
      id: id,
      type: type,
      dateTime: dateTime,
      hasBlood: hasBlood,
    );
  }
}
