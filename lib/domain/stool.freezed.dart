// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Stool {
  String get id;
  int get type;
  DateTime get dateTime;
  bool get hasBlood;
  String get notes;

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoolCopyWith<Stool> get copyWith =>
      _$StoolCopyWithImpl<Stool>(this as Stool, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Stool &&
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

  @override
  String toString() {
    return 'Stool(id: $id, type: $type, dateTime: $dateTime, hasBlood: $hasBlood, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $StoolCopyWith<$Res> {
  factory $StoolCopyWith(Stool value, $Res Function(Stool) _then) =
      _$StoolCopyWithImpl;
  @useResult
  $Res call(
      {String id, int type, DateTime dateTime, bool hasBlood, String notes});
}

/// @nodoc
class _$StoolCopyWithImpl<$Res> implements $StoolCopyWith<$Res> {
  _$StoolCopyWithImpl(this._self, this._then);

  final Stool _self;
  final $Res Function(Stool) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasBlood: null == hasBlood
          ? _self.hasBlood
          : hasBlood // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Stool].
extension StoolPatterns on Stool {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Stool value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stool() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Stool value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stool():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Stool value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stool() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, int type, DateTime dateTime, bool hasBlood,
            String notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Stool() when $default != null:
        return $default(
            _that.id, _that.type, _that.dateTime, _that.hasBlood, _that.notes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id, int type, DateTime dateTime, bool hasBlood, String notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stool():
        return $default(
            _that.id, _that.type, _that.dateTime, _that.hasBlood, _that.notes);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, int type, DateTime dateTime, bool hasBlood,
            String notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Stool() when $default != null:
        return $default(
            _that.id, _that.type, _that.dateTime, _that.hasBlood, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Stool extends Stool {
  const _Stool(
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

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoolCopyWith<_Stool> get copyWith =>
      __$StoolCopyWithImpl<_Stool>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stool &&
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

  @override
  String toString() {
    return 'Stool(id: $id, type: $type, dateTime: $dateTime, hasBlood: $hasBlood, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$StoolCopyWith<$Res> implements $StoolCopyWith<$Res> {
  factory _$StoolCopyWith(_Stool value, $Res Function(_Stool) _then) =
      __$StoolCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, int type, DateTime dateTime, bool hasBlood, String notes});
}

/// @nodoc
class __$StoolCopyWithImpl<$Res> implements _$StoolCopyWith<$Res> {
  __$StoolCopyWithImpl(this._self, this._then);

  final _Stool _self;
  final $Res Function(_Stool) _then;

  /// Create a copy of Stool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
    Object? notes = null,
  }) {
    return _then(_Stool(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasBlood: null == hasBlood
          ? _self.hasBlood
          : hasBlood // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
