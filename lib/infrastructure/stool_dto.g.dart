// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stool_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoolDto _$$_StoolDtoFromJson(Map<String, dynamic> json) => _$_StoolDto(
      id: json['id'] as String,
      type: json['type'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
      bloodInStool: json['bloodInStool'] as bool,
    );

Map<String, dynamic> _$$_StoolDtoToJson(_$_StoolDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'dateTime': instance.dateTime.toIso8601String(),
      'bloodInStool': instance.bloodInStool,
    };
