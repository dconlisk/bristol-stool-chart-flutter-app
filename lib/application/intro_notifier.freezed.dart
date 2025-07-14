// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IntroState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IntroState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'IntroState()';
  }
}

/// @nodoc
class $IntroStateCopyWith<$Res> {
  $IntroStateCopyWith(IntroState _, $Res Function(IntroState) __);
}

/// Adds pattern-matching-related methods to [IntroState].
extension IntroStatePatterns on IntroState {
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
    TResult Function(_HasSeenIntro value)? hasSeenIntro,
    TResult Function(_HasNotSeenIntro value)? hasNotSeenIntro,
    TResult Function(_UpdateFailed value)? updateFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _HasSeenIntro() when hasSeenIntro != null:
        return hasSeenIntro(_that);
      case _HasNotSeenIntro() when hasNotSeenIntro != null:
        return hasNotSeenIntro(_that);
      case _UpdateFailed() when updateFailed != null:
        return updateFailed(_that);
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
    required TResult Function(_HasSeenIntro value) hasSeenIntro,
    required TResult Function(_HasNotSeenIntro value) hasNotSeenIntro,
    required TResult Function(_UpdateFailed value) updateFailed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _HasSeenIntro():
        return hasSeenIntro(_that);
      case _HasNotSeenIntro():
        return hasNotSeenIntro(_that);
      case _UpdateFailed():
        return updateFailed(_that);
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
    TResult? Function(_HasSeenIntro value)? hasSeenIntro,
    TResult? Function(_HasNotSeenIntro value)? hasNotSeenIntro,
    TResult? Function(_UpdateFailed value)? updateFailed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _HasSeenIntro() when hasSeenIntro != null:
        return hasSeenIntro(_that);
      case _HasNotSeenIntro() when hasNotSeenIntro != null:
        return hasNotSeenIntro(_that);
      case _UpdateFailed() when updateFailed != null:
        return updateFailed(_that);
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
    TResult Function()? hasSeenIntro,
    TResult Function()? hasNotSeenIntro,
    TResult Function()? updateFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _HasSeenIntro() when hasSeenIntro != null:
        return hasSeenIntro();
      case _HasNotSeenIntro() when hasNotSeenIntro != null:
        return hasNotSeenIntro();
      case _UpdateFailed() when updateFailed != null:
        return updateFailed();
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
    required TResult Function() hasSeenIntro,
    required TResult Function() hasNotSeenIntro,
    required TResult Function() updateFailed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _HasSeenIntro():
        return hasSeenIntro();
      case _HasNotSeenIntro():
        return hasNotSeenIntro();
      case _UpdateFailed():
        return updateFailed();
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
    TResult? Function()? hasSeenIntro,
    TResult? Function()? hasNotSeenIntro,
    TResult? Function()? updateFailed,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _HasSeenIntro() when hasSeenIntro != null:
        return hasSeenIntro();
      case _HasNotSeenIntro() when hasNotSeenIntro != null:
        return hasNotSeenIntro();
      case _UpdateFailed() when updateFailed != null:
        return updateFailed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial extends IntroState {
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
    return 'IntroState.initial()';
  }
}

/// @nodoc

class _HasSeenIntro extends IntroState {
  const _HasSeenIntro() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HasSeenIntro);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'IntroState.hasSeenIntro()';
  }
}

/// @nodoc

class _HasNotSeenIntro extends IntroState {
  const _HasNotSeenIntro() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HasNotSeenIntro);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'IntroState.hasNotSeenIntro()';
  }
}

/// @nodoc

class _UpdateFailed extends IntroState {
  const _UpdateFailed() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'IntroState.updateFailed()';
  }
}

// dart format on
