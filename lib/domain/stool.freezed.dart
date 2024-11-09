// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Stool {
  String get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get hasBlood => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoolCopyWith<Stool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoolCopyWith<$Res> {
  factory $StoolCopyWith(Stool value, $Res Function(Stool) then) =
      _$StoolCopyWithImpl<$Res, Stool>;
  @useResult
  $Res call(
      {String id, int type, DateTime dateTime, bool hasBlood, String notes});
}

/// @nodoc
class _$StoolCopyWithImpl<$Res, $Val extends Stool>
    implements $StoolCopyWith<$Res> {
  _$StoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoolImplCopyWith<$Res> implements $StoolCopyWith<$Res> {
  factory _$$StoolImplCopyWith(
          _$StoolImpl value, $Res Function(_$StoolImpl) then) =
      __$$StoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, int type, DateTime dateTime, bool hasBlood, String notes});
}

/// @nodoc
class __$$StoolImplCopyWithImpl<$Res>
    extends _$StoolCopyWithImpl<$Res, _$StoolImpl>
    implements _$$StoolImplCopyWith<$Res> {
  __$$StoolImplCopyWithImpl(
      _$StoolImpl _value, $Res Function(_$StoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
    Object? notes = null,
  }) {
    return _then(_$StoolImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoolImpl extends _Stool {
  const _$StoolImpl(
      {required this.id,
      required this.type,
      required this.dateTime,
      required this.hasBlood,
      required this.notes})
      : super._();

  @override
  final String id;
  @override
  final int type;
  @override
  final DateTime dateTime;
  @override
  final bool hasBlood;
  @override
  final String notes;

  @override
  String toString() {
    return 'Stool(id: $id, type: $type, dateTime: $dateTime, hasBlood: $hasBlood, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.hasBlood, hasBlood) ||
                other.hasBlood == hasBlood) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, dateTime, hasBlood, notes);

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoolImplCopyWith<_$StoolImpl> get copyWith =>
      __$$StoolImplCopyWithImpl<_$StoolImpl>(this, _$identity);
}

abstract class _Stool extends Stool {
  const factory _Stool(
      {required final String id,
      required final int type,
      required final DateTime dateTime,
      required final bool hasBlood,
      required final String notes}) = _$StoolImpl;
  const _Stool._() : super._();

  @override
  String get id;
  @override
  int get type;
  @override
  DateTime get dateTime;
  @override
  bool get hasBlood;
  @override
  String get notes;

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoolImplCopyWith<_$StoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
