// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stool_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoolDto _$$_StoolDtoFromJson(Map<String, dynamic> json) => _$_StoolDto(
      type: json['type'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      hasBlood: json['hasBlood'] as bool,
    );

Map<String, dynamic> _$$_StoolDtoToJson(_$_StoolDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'dateTime': instance.dateTime.toIso8601String(),
      'hasBlood': instance.hasBlood,
    };
