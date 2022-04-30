// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stool_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoolFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() database,
    required TResult Function() fileSystem,
    required TResult Function() import,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatabaseFailure value) database,
    required TResult Function(_FileSystemFailure value) fileSystem,
    required TResult Function(_ImportFailure value) import,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoolFailureCopyWith<$Res> {
  factory $StoolFailureCopyWith(
          StoolFailure value, $Res Function(StoolFailure) then) =
      _$StoolFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoolFailureCopyWithImpl<$Res> implements $StoolFailureCopyWith<$Res> {
  _$StoolFailureCopyWithImpl(this._value, this._then);

  final StoolFailure _value;
  // ignore: unused_field
  final $Res Function(StoolFailure) _then;
}

/// @nodoc
abstract class _$DatabaseFailureCopyWith<$Res> {
  factory _$DatabaseFailureCopyWith(
          _DatabaseFailure value, $Res Function(_DatabaseFailure) then) =
      __$DatabaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$DatabaseFailureCopyWithImpl<$Res>
    extends _$StoolFailureCopyWithImpl<$Res>
    implements _$DatabaseFailureCopyWith<$Res> {
  __$DatabaseFailureCopyWithImpl(
      _DatabaseFailure _value, $Res Function(_DatabaseFailure) _then)
      : super(_value, (v) => _then(v as _DatabaseFailure));

  @override
  _DatabaseFailure get _value => super._value as _DatabaseFailure;
}

/// @nodoc

class _$_DatabaseFailure extends _DatabaseFailure {
  const _$_DatabaseFailure() : super._();

  @override
  String toString() {
    return 'StoolFailure.database()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DatabaseFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() database,
    required TResult Function() fileSystem,
    required TResult Function() import,
  }) {
    return database();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
  }) {
    return database?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatabaseFailure value) database,
    required TResult Function(_FileSystemFailure value) fileSystem,
    required TResult Function(_ImportFailure value) import,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class _DatabaseFailure extends StoolFailure {
  const factory _DatabaseFailure() = _$_DatabaseFailure;
  const _DatabaseFailure._() : super._();
}

/// @nodoc
abstract class _$FileSystemFailureCopyWith<$Res> {
  factory _$FileSystemFailureCopyWith(
          _FileSystemFailure value, $Res Function(_FileSystemFailure) then) =
      __$FileSystemFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FileSystemFailureCopyWithImpl<$Res>
    extends _$StoolFailureCopyWithImpl<$Res>
    implements _$FileSystemFailureCopyWith<$Res> {
  __$FileSystemFailureCopyWithImpl(
      _FileSystemFailure _value, $Res Function(_FileSystemFailure) _then)
      : super(_value, (v) => _then(v as _FileSystemFailure));

  @override
  _FileSystemFailure get _value => super._value as _FileSystemFailure;
}

/// @nodoc

class _$_FileSystemFailure extends _FileSystemFailure {
  const _$_FileSystemFailure() : super._();

  @override
  String toString() {
    return 'StoolFailure.fileSystem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FileSystemFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() database,
    required TResult Function() fileSystem,
    required TResult Function() import,
  }) {
    return fileSystem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
  }) {
    return fileSystem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
    required TResult orElse(),
  }) {
    if (fileSystem != null) {
      return fileSystem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatabaseFailure value) database,
    required TResult Function(_FileSystemFailure value) fileSystem,
    required TResult Function(_ImportFailure value) import,
  }) {
    return fileSystem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
  }) {
    return fileSystem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
    required TResult orElse(),
  }) {
    if (fileSystem != null) {
      return fileSystem(this);
    }
    return orElse();
  }
}

abstract class _FileSystemFailure extends StoolFailure {
  const factory _FileSystemFailure() = _$_FileSystemFailure;
  const _FileSystemFailure._() : super._();
}

/// @nodoc
abstract class _$ImportFailureCopyWith<$Res> {
  factory _$ImportFailureCopyWith(
          _ImportFailure value, $Res Function(_ImportFailure) then) =
      __$ImportFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImportFailureCopyWithImpl<$Res>
    extends _$StoolFailureCopyWithImpl<$Res>
    implements _$ImportFailureCopyWith<$Res> {
  __$ImportFailureCopyWithImpl(
      _ImportFailure _value, $Res Function(_ImportFailure) _then)
      : super(_value, (v) => _then(v as _ImportFailure));

  @override
  _ImportFailure get _value => super._value as _ImportFailure;
}

/// @nodoc

class _$_ImportFailure extends _ImportFailure {
  const _$_ImportFailure() : super._();

  @override
  String toString() {
    return 'StoolFailure.import()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ImportFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() database,
    required TResult Function() fileSystem,
    required TResult Function() import,
  }) {
    return import();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
  }) {
    return import?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? database,
    TResult Function()? fileSystem,
    TResult Function()? import,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatabaseFailure value) database,
    required TResult Function(_FileSystemFailure value) fileSystem,
    required TResult Function(_ImportFailure value) import,
  }) {
    return import(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
  }) {
    return import?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatabaseFailure value)? database,
    TResult Function(_FileSystemFailure value)? fileSystem,
    TResult Function(_ImportFailure value)? import,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import(this);
    }
    return orElse();
  }
}

abstract class _ImportFailure extends StoolFailure {
  const factory _ImportFailure() = _$_ImportFailure;
  const _ImportFailure._() : super._();
}
