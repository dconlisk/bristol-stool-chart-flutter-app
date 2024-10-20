// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stool_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoolDto _$StoolDtoFromJson(Map<String, dynamic> json) {
  return _StoolDto.fromJson(json);
}

/// @nodoc
mixin _$StoolDto {
  String? get uuid => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get hasBlood => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this StoolDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoolDtoCopyWith<StoolDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoolDtoCopyWith<$Res> {
  factory $StoolDtoCopyWith(StoolDto value, $Res Function(StoolDto) then) =
      _$StoolDtoCopyWithImpl<$Res, StoolDto>;
  @useResult
  $Res call(
      {String? uuid,
      int type,
      DateTime dateTime,
      bool hasBlood,
      String? notes});
}

/// @nodoc
class _$StoolDtoCopyWithImpl<$Res, $Val extends StoolDto>
    implements $StoolDtoCopyWith<$Res> {
  _$StoolDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasBlood: null == hasBlood
          ? _value.hasBlood
          : hasBlood // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoolDtoImplCopyWith<$Res>
    implements $StoolDtoCopyWith<$Res> {
  factory _$$StoolDtoImplCopyWith(
          _$StoolDtoImpl value, $Res Function(_$StoolDtoImpl) then) =
      __$$StoolDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      int type,
      DateTime dateTime,
      bool hasBlood,
      String? notes});
}

/// @nodoc
class __$$StoolDtoImplCopyWithImpl<$Res>
    extends _$StoolDtoCopyWithImpl<$Res, _$StoolDtoImpl>
    implements _$$StoolDtoImplCopyWith<$Res> {
  __$$StoolDtoImplCopyWithImpl(
      _$StoolDtoImpl _value, $Res Function(_$StoolDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
    Object? notes = freezed,
  }) {
    return _then(_$StoolDtoImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasBlood: null == hasBlood
          ? _value.hasBlood
          : hasBlood // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoolDtoImpl extends _StoolDto {
  const _$StoolDtoImpl(
      {this.uuid,
      required this.type,
      required this.dateTime,
      required this.hasBlood,
      this.notes})
      : super._();

  factory _$StoolDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoolDtoImplFromJson(json);

  @override
  final String? uuid;
  @override
  final int type;
  @override
  final DateTime dateTime;
  @override
  final bool hasBlood;
  @override
  final String? notes;

  @override
  String toString() {
    return 'StoolDto(uuid: $uuid, type: $type, dateTime: $dateTime, hasBlood: $hasBlood, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoolDtoImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.hasBlood, hasBlood) ||
                other.hasBlood == hasBlood) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, type, dateTime, hasBlood, notes);

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoolDtoImplCopyWith<_$StoolDtoImpl> get copyWith =>
      __$$StoolDtoImplCopyWithImpl<_$StoolDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoolDtoImplToJson(
      this,
    );
  }
}

abstract class _StoolDto extends StoolDto {
  const factory _StoolDto(
      {final String? uuid,
      required final int type,
      required final DateTime dateTime,
      required final bool hasBlood,
      final String? notes}) = _$StoolDtoImpl;
  const _StoolDto._() : super._();

  factory _StoolDto.fromJson(Map<String, dynamic> json) =
      _$StoolDtoImpl.fromJson;

  @override
  String? get uuid;
  @override
  int get type;
  @override
  DateTime get dateTime;
  @override
  bool get hasBlood;
  @override
  String? get notes;

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoolDtoImplCopyWith<_$StoolDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
