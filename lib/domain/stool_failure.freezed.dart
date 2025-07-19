// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stool_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoolFailure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoolFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoolFailure()';
  }
}

/// @nodoc
class $StoolFailureCopyWith<$Res> {
  $StoolFailureCopyWith(StoolFailure _, $Res Function(StoolFailure) __);
}

/// Adds pattern-matching-related methods to [StoolFailure].
extension StoolFailurePatterns on StoolFailure {
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
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
    TResult Function(_UuidFailure value)? uuid,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotFoundFailure() when notFound != null:
        return notFound(_that);
      case _DatabaseFailure() when database != null:
        return database(_that);
      case _FileSystemFailure() when fileSystem != null:
        return fileSystem(_that);
      case _ImportFailure() when import != null:
        return import(_that);
      case _UuidFailure() when uuid != null:
        return uuid(_that);
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
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_DatabaseFailure value) database,
    required TResult Function(_FileSystemFailure value) fileSystem,
    required TResult Function(_ImportFailure value) import,
    required TResult Function(_UuidFailure value) uuid,
  }) {
    final _that = this;
    switch (_that) {
      case _NotFoundFailure():
        return notFound(_that);
      case _DatabaseFailure():
        return database(_that);
      case _FileSystemFailure():
        return fileSystem(_that);
      case _ImportFailure():
        return import(_that);
      case _UuidFailure():
        return uuid(_that);
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
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_DatabaseFailure value)? database,
    TResult? Function(_FileSystemFailure value)? fileSystem,
    TResult? Function(_ImportFailure value)? import,
    TResult? Function(_UuidFailure value)? uuid,
  }) {
    final _that = this;
    switch (_that) {
      case _NotFoundFailure() when notFound != null:
        return notFound(_that);
      case _DatabaseFailure() when database != null:
        return database(_that);
      case _FileSystemFailure() when fileSystem != null:
        return fileSystem(_that);
      case _ImportFailure() when import != null:
        return import(_that);
      case _UuidFailure() when uuid != null:
        return uuid(_that);
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
    TResult Function()? notFound,
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
    TResult Function()? uuid,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotFoundFailure() when notFound != null:
        return notFound();
      case _DatabaseFailure() when database != null:
        return database();
      case _FileSystemFailure() when fileSystem != null:
        return fileSystem();
      case _ImportFailure() when import != null:
        return import();
      case _UuidFailure() when uuid != null:
        return uuid();
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
    required TResult Function() notFound,
    required TResult Function() database,
    required TResult Function() fileSystem,
    required TResult Function() import,
    required TResult Function() uuid,
  }) {
    final _that = this;
    switch (_that) {
      case _NotFoundFailure():
        return notFound();
      case _DatabaseFailure():
        return database();
      case _FileSystemFailure():
        return fileSystem();
      case _ImportFailure():
        return import();
      case _UuidFailure():
        return uuid();
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
    TResult? Function()? notFound,
    TResult? Function()? database,
    TResult? Function()? fileSystem,
    TResult? Function()? import,
    TResult? Function()? uuid,
  }) {
    final _that = this;
    switch (_that) {
      case _NotFoundFailure() when notFound != null:
        return notFound();
      case _DatabaseFailure() when database != null:
        return database();
      case _FileSystemFailure() when fileSystem != null:
        return fileSystem();
      case _ImportFailure() when import != null:
        return import();
      case _UuidFailure() when uuid != null:
        return uuid();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotFoundFailure extends StoolFailure {
  const _NotFoundFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoolFailure.notFound()';
  }
}

/// @nodoc

class _DatabaseFailure extends StoolFailure {
  const _DatabaseFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DatabaseFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoolFailure.database()';
  }
}

/// @nodoc

class _FileSystemFailure extends StoolFailure {
  const _FileSystemFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FileSystemFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoolFailure.fileSystem()';
  }
}

/// @nodoc

class _ImportFailure extends StoolFailure {
  const _ImportFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ImportFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoolFailure.import()';
  }
}

/// @nodoc

class _UuidFailure extends StoolFailure {
  const _UuidFailure() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UuidFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoolFailure.uuid()';
  }
}

// dart format on
