// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocaleEvent {
  AppLocale get appLocale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale appLocale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLocale appLocale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale appLocale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLocale value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeLocale value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleEventCopyWith<LocaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res, LocaleEvent>;
  @useResult
  $Res call({AppLocale appLocale});
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res, $Val extends LocaleEvent>
    implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocale = null,
  }) {
    return _then(_value.copyWith(
      appLocale: null == appLocale
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeLocaleImplCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory _$$ChangeLocaleImplCopyWith(
          _$ChangeLocaleImpl value, $Res Function(_$ChangeLocaleImpl) then) =
      __$$ChangeLocaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLocale appLocale});
}

/// @nodoc
class __$$ChangeLocaleImplCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res, _$ChangeLocaleImpl>
    implements _$$ChangeLocaleImplCopyWith<$Res> {
  __$$ChangeLocaleImplCopyWithImpl(
      _$ChangeLocaleImpl _value, $Res Function(_$ChangeLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocale = null,
  }) {
    return _then(_$ChangeLocaleImpl(
      appLocale: null == appLocale
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleImpl implements ChangeLocale {
  const _$ChangeLocaleImpl({required this.appLocale});

  @override
  final AppLocale appLocale;

  @override
  String toString() {
    return 'LocaleEvent.changeLocale(appLocale: $appLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleImpl &&
            (identical(other.appLocale, appLocale) ||
                other.appLocale == appLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      __$$ChangeLocaleImplCopyWithImpl<_$ChangeLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale appLocale) changeLocale,
  }) {
    return changeLocale(appLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLocale appLocale)? changeLocale,
  }) {
    return changeLocale?.call(appLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale appLocale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(appLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLocale value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeLocale value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class ChangeLocale implements LocaleEvent {
  const factory ChangeLocale({required final AppLocale appLocale}) =
      _$ChangeLocaleImpl;

  @override
  AppLocale get appLocale;
  @override
  @JsonKey(ignore: true)
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocaleState {
  AppLocale get appLocale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res, LocaleState>;
  @useResult
  $Res call({AppLocale appLocale});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res, $Val extends LocaleState>
    implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocale = null,
  }) {
    return _then(_value.copyWith(
      appLocale: null == appLocale
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleStateImplCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$$LocaleStateImplCopyWith(
          _$LocaleStateImpl value, $Res Function(_$LocaleStateImpl) then) =
      __$$LocaleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLocale appLocale});
}

/// @nodoc
class __$$LocaleStateImplCopyWithImpl<$Res>
    extends _$LocaleStateCopyWithImpl<$Res, _$LocaleStateImpl>
    implements _$$LocaleStateImplCopyWith<$Res> {
  __$$LocaleStateImplCopyWithImpl(
      _$LocaleStateImpl _value, $Res Function(_$LocaleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocale = null,
  }) {
    return _then(_$LocaleStateImpl(
      appLocale: null == appLocale
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$LocaleStateImpl implements _LocaleState {
  const _$LocaleStateImpl({required this.appLocale});

  @override
  final AppLocale appLocale;

  @override
  String toString() {
    return 'LocaleState(appLocale: $appLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleStateImpl &&
            (identical(other.appLocale, appLocale) ||
                other.appLocale == appLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleStateImplCopyWith<_$LocaleStateImpl> get copyWith =>
      __$$LocaleStateImplCopyWithImpl<_$LocaleStateImpl>(this, _$identity);
}

abstract class _LocaleState implements LocaleState {
  const factory _LocaleState({required final AppLocale appLocale}) =
      _$LocaleStateImpl;

  @override
  AppLocale get appLocale;
  @override
  @JsonKey(ignore: true)
  _$$LocaleStateImplCopyWith<_$LocaleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
