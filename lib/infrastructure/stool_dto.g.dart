// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stool_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoolDtoImpl _$$StoolDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoolDtoImpl(
      type: (json['type'] as num).toInt(),
      dateTime: DateTime.parse(json['dateTime'] as String),
      hasBlood: json['hasBlood'] as bool,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$StoolDtoImplToJson(_$StoolDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'dateTime': instance.dateTime.toIso8601String(),
      'hasBlood': instance.hasBlood,
      'notes': instance.notes,
    };
