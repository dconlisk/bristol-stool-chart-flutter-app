// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stool_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoolDto {
  String? get uuid;
  int get type;
  DateTime get dateTime;
  bool get hasBlood;
  String? get notes;

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoolDtoCopyWith<StoolDto> get copyWith =>
      _$StoolDtoCopyWithImpl<StoolDto>(this as StoolDto, _$identity);

  /// Serializes this StoolDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoolDto &&
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

  @override
  String toString() {
    return 'StoolDto(uuid: $uuid, type: $type, dateTime: $dateTime, hasBlood: $hasBlood, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $StoolDtoCopyWith<$Res> {
  factory $StoolDtoCopyWith(StoolDto value, $Res Function(StoolDto) _then) =
      _$StoolDtoCopyWithImpl;
  @useResult
  $Res call(
      {String? uuid,
      int type,
      DateTime dateTime,
      bool hasBlood,
      String? notes});
}

/// @nodoc
class _$StoolDtoCopyWithImpl<$Res> implements $StoolDtoCopyWith<$Res> {
  _$StoolDtoCopyWithImpl(this._self, this._then);

  final StoolDto _self;
  final $Res Function(StoolDto) _then;

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
    return _then(_self.copyWith(
      uuid: freezed == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StoolDto].
extension StoolDtoPatterns on StoolDto {
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
    TResult Function(_StoolDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoolDto() when $default != null:
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
    TResult Function(_StoolDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoolDto():
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
    TResult? Function(_StoolDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoolDto() when $default != null:
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
    TResult Function(String? uuid, int type, DateTime dateTime, bool hasBlood,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoolDto() when $default != null:
        return $default(_that.uuid, _that.type, _that.dateTime, _that.hasBlood,
            _that.notes);
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
    TResult Function(String? uuid, int type, DateTime dateTime, bool hasBlood,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoolDto():
        return $default(_that.uuid, _that.type, _that.dateTime, _that.hasBlood,
            _that.notes);
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
    TResult? Function(String? uuid, int type, DateTime dateTime, bool hasBlood,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoolDto() when $default != null:
        return $default(_that.uuid, _that.type, _that.dateTime, _that.hasBlood,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StoolDto extends StoolDto {
  const _StoolDto(
      {this.uuid,
      required this.type,
      required this.dateTime,
      required this.hasBlood,
      this.notes})
      : super._();
  factory _StoolDto.fromJson(Map<String, dynamic> json) =>
      _$StoolDtoFromJson(json);

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

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoolDtoCopyWith<_StoolDto> get copyWith =>
      __$StoolDtoCopyWithImpl<_StoolDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoolDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoolDto &&
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

  @override
  String toString() {
    return 'StoolDto(uuid: $uuid, type: $type, dateTime: $dateTime, hasBlood: $hasBlood, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$StoolDtoCopyWith<$Res>
    implements $StoolDtoCopyWith<$Res> {
  factory _$StoolDtoCopyWith(_StoolDto value, $Res Function(_StoolDto) _then) =
      __$StoolDtoCopyWithImpl;
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
class __$StoolDtoCopyWithImpl<$Res> implements _$StoolDtoCopyWith<$Res> {
  __$StoolDtoCopyWithImpl(this._self, this._then);

  final _StoolDto _self;
  final $Res Function(_StoolDto) _then;

  /// Create a copy of StoolDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uuid = freezed,
    Object? type = null,
    Object? dateTime = null,
    Object? hasBlood = null,
    Object? notes = freezed,
  }) {
    return _then(_StoolDto(
      uuid: freezed == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
