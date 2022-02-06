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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddStoolStateTearOff {
  const _$AddStoolStateTearOff();

  _Initial initial(Stool stool, bool showBloodOption) {
    return _Initial(
      stool,
      showBloodOption,
    );
  }

  _Initialised initialised(Stool stool, bool showBloodOption) {
    return _Initialised(
      stool,
      showBloodOption,
    );
  }
}

/// @nodoc
const $AddStoolState = _$AddStoolStateTearOff();

/// @nodoc
mixin _$AddStoolState {
  Stool get stool => throw _privateConstructorUsedError;
  bool get showBloodOption => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stool stool, bool showBloodOption) initial,
    required TResult Function(Stool stool, bool showBloodOption) initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialised value) initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
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
  }) {
    return initial(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
  }) {
    return initial?.call(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AddStoolState {
  const factory _Initial(Stool stool, bool showBloodOption) = _$_Initial;
  const _Initial._() : super._();

  @override
  Stool get stool;
  @override
  bool get showBloodOption;
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
  }) {
    return initialised(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
  }) {
    return initialised?.call(stool, showBloodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stool stool, bool showBloodOption)? initial,
    TResult Function(Stool stool, bool showBloodOption)? initialised,
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
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialised value)? initialised,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Initialised extends AddStoolState {
  const factory _Initialised(Stool stool, bool showBloodOption) =
      _$_Initialised;
  const _Initialised._() : super._();

  @override
  Stool get stool;
  @override
  bool get showBloodOption;
  @override
  @JsonKey(ignore: true)
  _$InitialisedCopyWith<_Initialised> get copyWith =>
      throw _privateConstructorUsedError;
}
