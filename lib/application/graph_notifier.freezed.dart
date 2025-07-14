// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GraphState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GraphState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GraphState()';
  }
}

/// @nodoc
class $GraphStateCopyWith<$Res> {
  $GraphStateCopyWith(GraphState _, $Res Function(GraphState) __);
}

/// Adds pattern-matching-related methods to [GraphState].
extension GraphStatePatterns on GraphState {
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
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Initialised() when initialised != null:
        return initialised(_that);
      case _LoadFailure() when loadFailure != null:
        return loadFailure(_that);
      case _ShareFailure() when shareFailure != null:
        return shareFailure(_that);
      case _ShareSuccess() when shareSuccess != null:
        return shareSuccess(_that);
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
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Initialised():
        return initialised(_that);
      case _LoadFailure():
        return loadFailure(_that);
      case _ShareFailure():
        return shareFailure(_that);
      case _ShareSuccess():
        return shareSuccess(_that);
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
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_ShareFailure value)? shareFailure,
    TResult? Function(_ShareSuccess value)? shareSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Initialised() when initialised != null:
        return initialised(_that);
      case _LoadFailure() when loadFailure != null:
        return loadFailure(_that);
      case _ShareFailure() when shareFailure != null:
        return shareFailure(_that);
      case _ShareSuccess() when shareSuccess != null:
        return shareSuccess(_that);
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
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Initialised() when initialised != null:
        return initialised(_that.stools);
      case _LoadFailure() when loadFailure != null:
        return loadFailure();
      case _ShareFailure() when shareFailure != null:
        return shareFailure();
      case _ShareSuccess() when shareSuccess != null:
        return shareSuccess();
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
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Initialised():
        return initialised(_that.stools);
      case _LoadFailure():
        return loadFailure();
      case _ShareFailure():
        return shareFailure();
      case _ShareSuccess():
        return shareSuccess();
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
    TResult? Function()? initial,
    TResult? Function(List<Stool> stools)? initialised,
    TResult? Function()? loadFailure,
    TResult? Function()? shareFailure,
    TResult? Function()? shareSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Initialised() when initialised != null:
        return initialised(_that.stools);
      case _LoadFailure() when loadFailure != null:
        return loadFailure();
      case _ShareFailure() when shareFailure != null:
        return shareFailure();
      case _ShareSuccess() when shareSuccess != null:
        return shareSuccess();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial extends GraphState {
  const _Initial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GraphState.initial()';
  }
}

/// @nodoc

class _Initialised extends GraphState {
  const _Initialised(final List<Stool> stools)
      : _stools = stools,
        super._();

  final List<Stool> _stools;
  List<Stool> get stools {
    if (_stools is EqualUnmodifiableListView) return _stools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stools);
  }

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      __$InitialisedCopyWithImpl<_Initialised>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialised &&
            const DeepCollectionEquality().equals(other._stools, _stools));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stools));

  @override
  String toString() {
    return 'GraphState.initialised(stools: $stools)';
  }
}

/// @nodoc
abstract mixin class _$InitialisedCopyWith<$Res>
    implements $GraphStateCopyWith<$Res> {
  factory _$InitialisedCopyWith(
          _Initialised value, $Res Function(_Initialised) _then) =
      __$InitialisedCopyWithImpl;
  @useResult
  $Res call({List<Stool> stools});
}

/// @nodoc
class __$InitialisedCopyWithImpl<$Res> implements _$InitialisedCopyWith<$Res> {
  __$InitialisedCopyWithImpl(this._self, this._then);

  final _Initialised _self;
  final $Res Function(_Initialised) _then;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stools = null,
  }) {
    return _then(_Initialised(
      null == stools
          ? _self._stools
          : stools // ignore: cast_nullable_to_non_nullable
              as List<Stool>,
    ));
  }
}

/// @nodoc

class _LoadFailure extends GraphState {
  const _LoadFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GraphState.loadFailure()';
  }
}

/// @nodoc

class _ShareFailure extends GraphState {
  const _ShareFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShareFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GraphState.shareFailure()';
  }
}

/// @nodoc

class _ShareSuccess extends GraphState {
  const _ShareSuccess() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShareSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GraphState.shareSuccess()';
  }
}

// dart format on
