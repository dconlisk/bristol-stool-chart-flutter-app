// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'graph_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GraphStateTearOff {
  const _$GraphStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Initialised initialised(List<Stool> stools) {
    return _Initialised(
      stools,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }

  _ShareFailure shareFailure() {
    return const _ShareFailure();
  }

  _ShareSuccess shareSuccess() {
    return const _ShareSuccess();
  }
}

/// @nodoc
const $GraphState = _$GraphStateTearOff();

/// @nodoc
mixin _$GraphState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphStateCopyWith<$Res> {
  factory $GraphStateCopyWith(
          GraphState value, $Res Function(GraphState) then) =
      _$GraphStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GraphStateCopyWithImpl<$Res> implements $GraphStateCopyWith<$Res> {
  _$GraphStateCopyWithImpl(this._value, this._then);

  final GraphState _value;
  // ignore: unused_field
  final $Res Function(GraphState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GraphStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'GraphState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends GraphState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$InitialisedCopyWith<$Res> {
  factory _$InitialisedCopyWith(
          _Initialised value, $Res Function(_Initialised) then) =
      __$InitialisedCopyWithImpl<$Res>;
  $Res call({List<Stool> stools});
}

/// @nodoc
class __$InitialisedCopyWithImpl<$Res> extends _$GraphStateCopyWithImpl<$Res>
    implements _$InitialisedCopyWith<$Res> {
  __$InitialisedCopyWithImpl(
      _Initialised _value, $Res Function(_Initialised) _then)
      : super(_value, (v) => _then(v as _Initialised));

  @override
  _Initialised get _value => super._value as _Initialised;

  @override
  $Res call({
    Object? stools = freezed,
  }) {
    return _then(_Initialised(
      stools == freezed
          ? _value.stools
          : stools // ignore: cast_nullable_to_non_nullable
              as List<Stool>,
    ));
  }
}

/// @nodoc

class _$_Initialised extends _Initialised {
  const _$_Initialised(this.stools) : super._();

  @override
  final List<Stool> stools;

  @override
  String toString() {
    return 'GraphState.initialised(stools: $stools)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialised &&
            const DeepCollectionEquality().equals(other.stools, stools));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stools));

  @JsonKey(ignore: true)
  @override
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      __$InitialisedCopyWithImpl<_Initialised>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) {
    return initialised(stools);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
  }) {
    return initialised?.call(stools);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(stools);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Initialised extends GraphState {
  const factory _Initialised(List<Stool> stools) = _$_Initialised;
  const _Initialised._() : super._();

  List<Stool> get stools;
  @JsonKey(ignore: true)
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$GraphStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure() : super._();

  @override
  String toString() {
    return 'GraphState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends GraphState {
  const factory _LoadFailure() = _$_LoadFailure;
  const _LoadFailure._() : super._();
}

/// @nodoc
abstract class _$ShareFailureCopyWith<$Res> {
  factory _$ShareFailureCopyWith(
          _ShareFailure value, $Res Function(_ShareFailure) then) =
      __$ShareFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShareFailureCopyWithImpl<$Res> extends _$GraphStateCopyWithImpl<$Res>
    implements _$ShareFailureCopyWith<$Res> {
  __$ShareFailureCopyWithImpl(
      _ShareFailure _value, $Res Function(_ShareFailure) _then)
      : super(_value, (v) => _then(v as _ShareFailure));

  @override
  _ShareFailure get _value => super._value as _ShareFailure;
}

/// @nodoc

class _$_ShareFailure extends _ShareFailure {
  const _$_ShareFailure() : super._();

  @override
  String toString() {
    return 'GraphState.shareFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShareFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) {
    return shareFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
  }) {
    return shareFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) {
    if (shareFailure != null) {
      return shareFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) {
    return shareFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
  }) {
    return shareFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) {
    if (shareFailure != null) {
      return shareFailure(this);
    }
    return orElse();
  }
}

abstract class _ShareFailure extends GraphState {
  const factory _ShareFailure() = _$_ShareFailure;
  const _ShareFailure._() : super._();
}

/// @nodoc
abstract class _$ShareSuccessCopyWith<$Res> {
  factory _$ShareSuccessCopyWith(
          _ShareSuccess value, $Res Function(_ShareSuccess) then) =
      __$ShareSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShareSuccessCopyWithImpl<$Res> extends _$GraphStateCopyWithImpl<$Res>
    implements _$ShareSuccessCopyWith<$Res> {
  __$ShareSuccessCopyWithImpl(
      _ShareSuccess _value, $Res Function(_ShareSuccess) _then)
      : super(_value, (v) => _then(v as _ShareSuccess));

  @override
  _ShareSuccess get _value => super._value as _ShareSuccess;
}

/// @nodoc

class _$_ShareSuccess extends _ShareSuccess {
  const _$_ShareSuccess() : super._();

  @override
  String toString() {
    return 'GraphState.shareSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShareSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Stool> stools) initialised,
    required TResult Function() loadFailure,
    required TResult Function() shareFailure,
    required TResult Function() shareSuccess,
  }) {
    return shareSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
  }) {
    return shareSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Stool> stools)? initialised,
    TResult Function()? loadFailure,
    TResult Function()? shareFailure,
    TResult Function()? shareSuccess,
    required TResult orElse(),
  }) {
    if (shareSuccess != null) {
      return shareSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareSuccess value) shareSuccess,
  }) {
    return shareSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
  }) {
    return shareSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareSuccess value)? shareSuccess,
    required TResult orElse(),
  }) {
    if (shareSuccess != null) {
      return shareSuccess(this);
    }
    return orElse();
  }
}

abstract class _ShareSuccess extends GraphState {
  const factory _ShareSuccess() = _$_ShareSuccess;
  const _ShareSuccess._() : super._();
}
