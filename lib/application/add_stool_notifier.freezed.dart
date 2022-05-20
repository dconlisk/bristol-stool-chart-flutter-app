// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_stool_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddStoolState {
  Stool get stool => throw _privateConstructorUsedError;
  bool get showBloodOption => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
    required TResult Function(Stool stool, bool showBloodOption) error,
    required TResult Function(Stool stool, bool showBloodOption) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStoolStateCopyWith<AddStoolState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoolStateCopyWith<$Res> {
  factory $AddStoolStateCopyWith(
          AddStoolState value, $Res Function(AddStoolState) then) =
      _$AddStoolStateCopyWithImpl<$Res>;
  $Res call({Stool stool, bool showBloodOption});

  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class _$AddStoolStateCopyWithImpl<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  _$AddStoolStateCopyWithImpl(this._value, this._then);

  final AddStoolState _value;
  // ignore: unused_field
  final $Res Function(AddStoolState) _then;

  @override
  $Res call({
    Object? stool = freezed,
    Object? showBloodOption = freezed,
  }) {
    return _then(_value.copyWith(
      stool: stool == freezed
          ? _value.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      showBloodOption: showBloodOption == freezed
          ? _value.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StoolCopyWith<$Res> get stool {
    return $StoolCopyWith<$Res>(_value.stool, (value) {
      return _then(_value.copyWith(stool: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $AddStoolStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddStoolStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stool = freezed,
    Object? showBloodOption = freezed,
  }) {
    return _then(_Initial(
      stool == freezed
          ? _value.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      showBloodOption == freezed
          ? _value.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  @override
  String toString() {
    return 'AddStoolState.initial(stool: $stool, showBloodOption: $showBloodOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.stool, stool) &&
            const DeepCollectionEquality()
                .equals(other.showBloodOption, showBloodOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stool),
      const DeepCollectionEquality().hash(showBloodOption));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
    required TResult Function(Stool stool, bool showBloodOption) error,
    required TResult Function(Stool stool, bool showBloodOption) success,
  }) {
    return initial(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
  }) {
    return initial?.call(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(stool, showBloodOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AddStoolState {
  const factory _Initial(final Stool stool, final bool showBloodOption) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  Stool get stool => throw _privateConstructorUsedError;
  @override
  bool get showBloodOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialisedCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$InitialisedCopyWith(
          _Initialised value, $Res Function(_Initialised) then) =
      __$InitialisedCopyWithImpl<$Res>;
  @override
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$InitialisedCopyWithImpl<$Res> extends _$AddStoolStateCopyWithImpl<$Res>
    implements _$InitialisedCopyWith<$Res> {
  __$InitialisedCopyWithImpl(
      _Initialised _value, $Res Function(_Initialised) _then)
      : super(_value, (v) => _then(v as _Initialised));

  @override
  _Initialised get _value => super._value as _Initialised;

  @override
  $Res call({
    Object? stool = freezed,
    Object? showBloodOption = freezed,
  }) {
    return _then(_Initialised(
      stool == freezed
          ? _value.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      showBloodOption == freezed
          ? _value.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initialised extends _Initialised {
  const _$_Initialised(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  @override
  String toString() {
    return 'AddStoolState.initialised(stool: $stool, showBloodOption: $showBloodOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialised &&
            const DeepCollectionEquality().equals(other.stool, stool) &&
            const DeepCollectionEquality()
                .equals(other.showBloodOption, showBloodOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stool),
      const DeepCollectionEquality().hash(showBloodOption));

  @JsonKey(ignore: true)
  @override
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      __$InitialisedCopyWithImpl<_Initialised>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
    required TResult Function(Stool stool, bool showBloodOption) error,
    required TResult Function(Stool stool, bool showBloodOption) success,
  }) {
    return initialised(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
  }) {
    return initialised?.call(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(stool, showBloodOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SuccessState value) success,
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Initialised extends AddStoolState {
  const factory _Initialised(final Stool stool, final bool showBloodOption) =
      _$_Initialised;
  const _Initialised._() : super._();

  @override
  Stool get stool => throw _privateConstructorUsedError;
  @override
  bool get showBloodOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> extends _$AddStoolStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;

  @override
  $Res call({
    Object? stool = freezed,
    Object? showBloodOption = freezed,
  }) {
    return _then(_ErrorState(
      stool == freezed
          ? _value.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      showBloodOption == freezed
          ? _value.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  @override
  String toString() {
    return 'AddStoolState.error(stool: $stool, showBloodOption: $showBloodOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorState &&
            const DeepCollectionEquality().equals(other.stool, stool) &&
            const DeepCollectionEquality()
                .equals(other.showBloodOption, showBloodOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stool),
      const DeepCollectionEquality().hash(showBloodOption));

  @JsonKey(ignore: true)
  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
    required TResult Function(Stool stool, bool showBloodOption) error,
    required TResult Function(Stool stool, bool showBloodOption) success,
  }) {
    return error(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
  }) {
    return error?.call(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(stool, showBloodOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends AddStoolState {
  const factory _ErrorState(final Stool stool, final bool showBloodOption) =
      _$_ErrorState;
  const _ErrorState._() : super._();

  @override
  Stool get stool => throw _privateConstructorUsedError;
  @override
  bool get showBloodOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessStateCopyWith<$Res>
    implements $AddStoolStateCopyWith<$Res> {
  factory _$SuccessStateCopyWith(
          _SuccessState value, $Res Function(_SuccessState) then) =
      __$SuccessStateCopyWithImpl<$Res>;
  @override
  $Res call({Stool stool, bool showBloodOption});

  @override
  $StoolCopyWith<$Res> get stool;
}

/// @nodoc
class __$SuccessStateCopyWithImpl<$Res>
    extends _$AddStoolStateCopyWithImpl<$Res>
    implements _$SuccessStateCopyWith<$Res> {
  __$SuccessStateCopyWithImpl(
      _SuccessState _value, $Res Function(_SuccessState) _then)
      : super(_value, (v) => _then(v as _SuccessState));

  @override
  _SuccessState get _value => super._value as _SuccessState;

  @override
  $Res call({
    Object? stool = freezed,
    Object? showBloodOption = freezed,
  }) {
    return _then(_SuccessState(
      stool == freezed
          ? _value.stool
          : stool // ignore: cast_nullable_to_non_nullable
              as Stool,
      showBloodOption == freezed
          ? _value.showBloodOption
          : showBloodOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SuccessState extends _SuccessState {
  const _$_SuccessState(this.stool, this.showBloodOption) : super._();

  @override
  final Stool stool;
  @override
  final bool showBloodOption;

  @override
  String toString() {
    return 'AddStoolState.success(stool: $stool, showBloodOption: $showBloodOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessState &&
            const DeepCollectionEquality().equals(other.stool, stool) &&
            const DeepCollectionEquality()
                .equals(other.showBloodOption, showBloodOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stool),
      const DeepCollectionEquality().hash(showBloodOption));

  @JsonKey(ignore: true)
  @override
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      __$SuccessStateCopyWithImpl<_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
    required TResult Function(Stool stool, bool showBloodOption) error,
    required TResult Function(Stool stool, bool showBloodOption) success,
  }) {
    return success(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
  }) {
    return success?.call(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    TResult Function(Stool stool, bool showBloodOption)? error,
    TResult Function(Stool stool, bool showBloodOption)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(stool, showBloodOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState extends AddStoolState {
  const factory _SuccessState(final Stool stool, final bool showBloodOption) =
      _$_SuccessState;
  const _SuccessState._() : super._();

  @override
  Stool get stool => throw _privateConstructorUsedError;
  @override
  bool get showBloodOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
