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
      _$StoolCopyWithImpl<$Res>;
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class _$StoolCopyWithImpl<$Res> implements $StoolCopyWith<$Res> {
  _$StoolCopyWithImpl(this._value, this._then);

  final Stool _value;
  // ignore: unused_field
  final $Res Function(Stool) _then;

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
abstract class _$StoolCopyWith<$Res> implements $StoolCopyWith<$Res> {
  factory _$StoolCopyWith(_Stool value, $Res Function(_Stool) then) =
      __$StoolCopyWithImpl<$Res>;
  @override
  $Res call({int type, DateTime dateTime, bool hasBlood});
}

/// @nodoc
class __$StoolCopyWithImpl<$Res> extends _$StoolCopyWithImpl<$Res>
    implements _$StoolCopyWith<$Res> {
  __$StoolCopyWithImpl(_Stool _value, $Res Function(_Stool) _then)
      : super(_value, (v) => _then(v as _Stool));

  @override
  _Stool get _value => super._value as _Stool;

  @override
  $Res call({
    Object? type = freezed,
    Object? dateTime = freezed,
    Object? hasBlood = freezed,
  }) {
    return _then(_Stool(
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
            other is _Stool &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.hasBlood, hasBlood));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(hasBlood));

  @JsonKey(ignore: true)
  @override
  _$StoolCopyWith<_Stool> get copyWith =>
      __$StoolCopyWithImpl<_Stool>(this, _$identity);
}

abstract class _Stool extends Stool {
  const factory _Stool(
      {required final int type,
      required final DateTime dateTime,
      required final bool hasBlood}) = _$_Stool;
  const _Stool._() : super._();

  @override
  int get type => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  bool get hasBlood => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoolCopyWith<_Stool> get copyWith => throw _privateConstructorUsedError;
}
