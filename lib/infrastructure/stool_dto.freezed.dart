// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$StoolDtoCopyWithImpl<$Res>;
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class _$StoolDtoCopyWithImpl<$Res> implements $StoolDtoCopyWith<$Res> {
  _$StoolDtoCopyWithImpl(this._value, this._then);

  final StoolDto _value;
  // ignore: unused_field
  final $Res Function(StoolDto) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? dateTime = freezed,
    Object? hasBlood = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasBlood: hasBlood == freezed
          ? _value.hasBlood
          : hasBlood // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$StoolDtoCopyWith<$Res> implements $StoolDtoCopyWith<$Res> {
  factory _$StoolDtoCopyWith(_StoolDto value, $Res Function(_StoolDto) then) =
      __$StoolDtoCopyWithImpl<$Res>;
  @override
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class __$StoolDtoCopyWithImpl<$Res> extends _$StoolDtoCopyWithImpl<$Res>
    implements _$StoolDtoCopyWith<$Res> {
  __$StoolDtoCopyWithImpl(_StoolDto _value, $Res Function(_StoolDto) _then)
      : super(_value, (v) => _then(v as _StoolDto));

  @override
  _StoolDto get _value => super._value as _StoolDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? dateTime = freezed,
    Object? hasBlood = freezed,
  }) {
    return _then(_StoolDto(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasBlood: hasBlood == freezed
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
            other is _StoolDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.hasBlood, hasBlood));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(hasBlood));

  @JsonKey(ignore: true)
  @override
  _$StoolDtoCopyWith<_StoolDto> get copyWith =>
      __$StoolDtoCopyWithImpl<_StoolDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoolDtoToJson(this);
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
  int get type => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  bool get hasBlood => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoolDtoCopyWith<_StoolDto> get copyWith =>
      throw _privateConstructorUsedError;
}
