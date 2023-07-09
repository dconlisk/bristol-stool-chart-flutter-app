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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoolDto _$StoolDtoFromJson(Map<String, dynamic> json) {
  return _StoolDto.fromJson(json);
}

/// @nodoc
mixin _$StoolDto {
  int get type => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get hasBlood => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoolDtoCopyWith<StoolDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoolDtoCopyWith<$Res> {
  factory $StoolDtoCopyWith(StoolDto value, $Res Function(StoolDto) then) =
      _$StoolDtoCopyWithImpl<$Res, StoolDto>;
  @useResult
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class _$StoolDtoCopyWithImpl<$Res, $Val extends StoolDto>
    implements $StoolDtoCopyWith<$Res> {
  _$StoolDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoolDtoCopyWith<$Res> implements $StoolDtoCopyWith<$Res> {
  factory _$$_StoolDtoCopyWith(
          _$_StoolDto value, $Res Function(_$_StoolDto) then) =
      __$$_StoolDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class __$$_StoolDtoCopyWithImpl<$Res>
    extends _$StoolDtoCopyWithImpl<$Res, _$_StoolDto>
    implements _$$_StoolDtoCopyWith<$Res> {
  __$$_StoolDtoCopyWithImpl(
      _$_StoolDto _value, $Res Function(_$_StoolDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
  }) {
    return _then(_$_StoolDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoolDto extends _StoolDto {
  const _$_StoolDto(
      {required this.type, required this.dateTime, required this.hasBlood})
      : super._();

  factory _$_StoolDto.fromJson(Map<String, dynamic> json) =>
      _$$_StoolDtoFromJson(json);

  @override
  final int type;
  @override
  final DateTime dateTime;
  @override
  final bool hasBlood;

  @override
  String toString() {
    return 'StoolDto(type: $type, dateTime: $dateTime, hasBlood: $hasBlood)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoolDto &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.hasBlood, hasBlood) ||
                other.hasBlood == hasBlood));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, dateTime, hasBlood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoolDtoCopyWith<_$_StoolDto> get copyWith =>
      __$$_StoolDtoCopyWithImpl<_$_StoolDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoolDtoToJson(
      this,
    );
  }
}

abstract class _StoolDto extends StoolDto {
  const factory _StoolDto(
      {required final int type,
      required final DateTime dateTime,
      required final bool hasBlood}) = _$_StoolDto;
  const _StoolDto._() : super._();

  factory _StoolDto.fromJson(Map<String, dynamic> json) = _$_StoolDto.fromJson;

  @override
  int get type;
  @override
  DateTime get dateTime;
  @override
  bool get hasBlood;
  @override
  @JsonKey(ignore: true)
  _$$_StoolDtoCopyWith<_$_StoolDto> get copyWith =>
      throw _privateConstructorUsedError;
}
