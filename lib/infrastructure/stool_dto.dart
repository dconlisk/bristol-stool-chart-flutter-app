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
    required bool bloodInStool,
  }) = _StoolDto;

  factory StoolDto.fromJson(Map<String, dynamic> json) =>
      _$StoolDtoFromJson(json);
}
