// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Stool {
  int get type => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get hasBlood => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoolCopyWith<Stool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoolCopyWith<$Res> {
  factory $StoolCopyWith(Stool value, $Res Function(Stool) then) =
      _$StoolCopyWithImpl<$Res, Stool>;
  @useResult
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class _$StoolCopyWithImpl<$Res, $Val extends Stool>
    implements $StoolCopyWith<$Res> {
  _$StoolCopyWithImpl(this._value, this._then);

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
abstract class _$$_StoolCopyWith<$Res> implements $StoolCopyWith<$Res> {
  factory _$$_StoolCopyWith(_$_Stool value, $Res Function(_$_Stool) then) =
      __$$_StoolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class __$$_StoolCopyWithImpl<$Res> extends _$StoolCopyWithImpl<$Res, _$_Stool>
    implements _$$_StoolCopyWith<$Res> {
  __$$_StoolCopyWithImpl(_$_Stool _value, $Res Function(_$_Stool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
  }) {
    return _then(_$_Stool(
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

class _$_Stool extends _Stool {
  const _$_Stool(
      {required this.type, required this.dateTime, required this.hasBlood})
      : super._();

  @override
  final int type;
  @override
  final DateTime dateTime;
  @override
  final bool hasBlood;

  @override
  String toString() {
    return 'Stool(type: $type, dateTime: $dateTime, hasBlood: $hasBlood)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stool &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.hasBlood, hasBlood) ||
                other.hasBlood == hasBlood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, dateTime, hasBlood);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoolCopyWith<_$_Stool> get copyWith =>
      __$$_StoolCopyWithImpl<_$_Stool>(this, _$identity);
}

abstract class _Stool extends Stool {
  const factory _Stool(
      {required final int type,
      required final DateTime dateTime,
      required final bool hasBlood}) = _$_Stool;
  const _Stool._() : super._();

  @override
  int get type;
  @override
  DateTime get dateTime;
  @override
  bool get hasBlood;
  @override
  @JsonKey(ignore: true)
  _$$_StoolCopyWith<_$_Stool> get copyWith =>
      throw _privateConstructorUsedError;
}
