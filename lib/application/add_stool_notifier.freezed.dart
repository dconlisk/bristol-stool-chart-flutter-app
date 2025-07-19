// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_stool_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddStoolState {
  Stool get stool;
  bool get showBloodOption;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddStoolStateCopyWith<AddStoolState> get copyWith =>
      _$AddStoolStateCopyWithImpl<AddStoolState>(
          this as AddStoolState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddStoolState &&
            (identical(other.stool, stool) || other.stool == stool) &&
            (identical(other.showBloodOption, showBloodOption) ||
                other.showBloodOption == showBloodOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stool, showBloodOption);

  @override
  String toString() {
    return 'AddStoolState(stool: $stool, showBloodOption: $showBloodOption)';
  }
}

/// @nodoc
abstract mixin class $AddStoolStateCopyWith<$Res> {
  factory $AddStoolStateCopyWith(
          AddStoolState value, $Res Function(AddStoolState) _then) =
      _$AddStoolStateCopyWithImpl;
  @useResult
  $Res call({Stool stool, bool showBloodOption});

  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class _$AddStoolStateCopyWithImpl<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  _$AddStoolStateCopyWithImpl(this._self, this._then);

  final AddStoolState _self;
  final $Res Function(AddStoolState) _then;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stool = null,
    Object? showBloodOption = null,
  }) {
    return _then(_self.copyWith(
      stool: null == stool
          ? _self.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      showBloodOption: null == showBloodOption
          ? _self.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoolCopyWith<$Res> get stool {
    return $StoolCopyWith<$Res>(_self.stool, (value) {
      return _then(_self.copyWith(stool: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AddStoolState].
extension AddStoolStatePatterns on AddStoolState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Initialised() when initialised != null:
        return initialised(_that);
      case _ErrorState() when error != null:
        return error(_that);
      case _SuccessState() when success != null:
        return success(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SuccessState value) success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Initialised():
        return initialised(_that);
      case _ErrorState():
        return error(_that);
      case _SuccessState():
        return success(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Initialised value)? initialised,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SuccessState value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Initialised() when initialised != null:
        return initialised(_that);
      case _ErrorState() when error != null:
        return error(_that);
      case _SuccessState() when success != null:
        return success(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that.stool, _that.showBloodOption);
      case _Initialised() when initialised != null:
        return initialised(_that.stool, _that.showBloodOption);
      case _ErrorState() when error != null:
        return error(_that.stool, _that.showBloodOption);
      case _SuccessState() when success != null:
        return success(_that.stool, _that.showBloodOption);
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
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
    required TResult Function(Stool stool, bool showBloodOption) error,
    required TResult Function(Stool stool, bool showBloodOption) success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that.stool, _that.showBloodOption);
      case _Initialised():
        return initialised(_that.stool, _that.showBloodOption);
      case _ErrorState():
        return error(_that.stool, _that.showBloodOption);
      case _SuccessState():
        return success(_that.stool, _that.showBloodOption);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stool stool, bool showBloodOption)? initial,
    TResult? Function(Stool stool, bool showBloodOption)? initialised,
    TResult? Function(Stool stool, bool showBloodOption)? error,
    TResult? Function(Stool stool, bool showBloodOption)? success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that.stool, _that.showBloodOption);
      case _Initialised() when initialised != null:
        return initialised(_that.stool, _that.showBloodOption);
      case _ErrorState() when error != null:
        return error(_that.stool, _that.showBloodOption);
      case _SuccessState() when success != null:
        return success(_that.stool, _that.showBloodOption);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial extends AddStoolState {
  const _Initial(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.stool, stool) || other.stool == stool) &&
            (identical(other.showBloodOption, showBloodOption) ||
                other.showBloodOption == showBloodOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stool, showBloodOption);

  @override
  String toString() {
    return 'AddStoolState.initial(stool: $stool, showBloodOption: $showBloodOption)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stool = null,
    Object? showBloodOption = null,
  }) {
    return _then(_Initial(
      null == stool
          ? _self.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      null == showBloodOption
          ? _self.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoolCopyWith<$Res> get stool {
    return $StoolCopyWith<$Res>(_self.stool, (value) {
      return _then(_self.copyWith(stool: value));
    });
  }
}

/// @nodoc

class _Initialised extends AddStoolState {
  const _Initialised(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      __$InitialisedCopyWithImpl<_Initialised>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialised &&
            (identical(other.stool, stool) || other.stool == stool) &&
            (identical(other.showBloodOption, showBloodOption) ||
                other.showBloodOption == showBloodOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stool, showBloodOption);

  @override
  String toString() {
    return 'AddStoolState.initialised(stool: $stool, showBloodOption: $showBloodOption)';
  }
}

/// @nodoc
abstract mixin class _$InitialisedCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$InitialisedCopyWith(
          _Initialised value, $Res Function(_Initialised) _then) =
      __$InitialisedCopyWithImpl;
  @override
  @useResult
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$InitialisedCopyWithImpl<$Res> implements _$InitialisedCopyWith<$Res> {
  __$InitialisedCopyWithImpl(this._self, this._then);

  final _Initialised _self;
  final $Res Function(_Initialised) _then;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stool = null,
    Object? showBloodOption = null,
  }) {
    return _then(_Initialised(
      null == stool
          ? _self.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      null == showBloodOption
          ? _self.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoolCopyWith<$Res> get stool {
    return $StoolCopyWith<$Res>(_self.stool, (value) {
      return _then(_self.copyWith(stool: value));
    });
  }
}

/// @nodoc

class _ErrorState extends AddStoolState {
  const _ErrorState(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorState &&
            (identical(other.stool, stool) || other.stool == stool) &&
            (identical(other.showBloodOption, showBloodOption) ||
                other.showBloodOption == showBloodOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stool, showBloodOption);

  @override
  String toString() {
    return 'AddStoolState.error(stool: $stool, showBloodOption: $showBloodOption)';
  }
}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) _then) =
      __$ErrorStateCopyWithImpl;
  @override
  @useResult
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(this._self, this._then);

  final _ErrorState _self;
  final $Res Function(_ErrorState) _then;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stool = null,
    Object? showBloodOption = null,
  }) {
    return _then(_ErrorState(
      null == stool
          ? _self.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      null == showBloodOption
          ? _self.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoolCopyWith<$Res> get stool {
    return $StoolCopyWith<$Res>(_self.stool, (value) {
      return _then(_self.copyWith(stool: value));
    });
  }
}

/// @nodoc

class _SuccessState extends AddStoolState {
  const _SuccessState(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      __$SuccessStateCopyWithImpl<_SuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessState &&
            (identical(other.stool, stool) || other.stool == stool) &&
            (identical(other.showBloodOption, showBloodOption) ||
                other.showBloodOption == showBloodOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stool, showBloodOption);

  @override
  String toString() {
    return 'AddStoolState.success(stool: $stool, showBloodOption: $showBloodOption)';
  }
}

/// @nodoc
abstract mixin class _$SuccessStateCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$SuccessStateCopyWith(
          _SuccessState value, $Res Function(_SuccessState) _then) =
      __$SuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$SuccessStateCopyWithImpl<$Res>
    implements _$SuccessStateCopyWith<$Res> {
  __$SuccessStateCopyWithImpl(this._self, this._then);

  final _SuccessState _self;
  final $Res Function(_SuccessState) _then;

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stool = null,
    Object? showBloodOption = null,
  }) {
    return _then(_SuccessState(
      null == stool
          ? _self.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      null == showBloodOption
          ? _self.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AddStoolState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoolCopyWith<$Res> get stool {
    return $StoolCopyWith<$Res>(_self.stool, (value) {
      return _then(_self.copyWith(stool: value));
    });
  }
}

// dart format on
