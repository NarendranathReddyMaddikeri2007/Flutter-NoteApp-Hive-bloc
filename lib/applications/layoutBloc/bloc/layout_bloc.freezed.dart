// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LayoutEvent {
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) changeLayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? changeLayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? changeLayout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLayout value) changeLayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeLayout value)? changeLayout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLayout value)? changeLayout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LayoutEventCopyWith<LayoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutEventCopyWith<$Res> {
  factory $LayoutEventCopyWith(
          LayoutEvent value, $Res Function(LayoutEvent) then) =
      _$LayoutEventCopyWithImpl<$Res, LayoutEvent>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$LayoutEventCopyWithImpl<$Res, $Val extends LayoutEvent>
    implements $LayoutEventCopyWith<$Res> {
  _$LayoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeLayoutImplCopyWith<$Res>
    implements $LayoutEventCopyWith<$Res> {
  factory _$$ChangeLayoutImplCopyWith(
          _$ChangeLayoutImpl value, $Res Function(_$ChangeLayoutImpl) then) =
      __$$ChangeLayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$ChangeLayoutImplCopyWithImpl<$Res>
    extends _$LayoutEventCopyWithImpl<$Res, _$ChangeLayoutImpl>
    implements _$$ChangeLayoutImplCopyWith<$Res> {
  __$$ChangeLayoutImplCopyWithImpl(
      _$ChangeLayoutImpl _value, $Res Function(_$ChangeLayoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$ChangeLayoutImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeLayoutImpl implements ChangeLayout {
  const _$ChangeLayoutImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'LayoutEvent.changeLayout(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLayoutImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLayoutImplCopyWith<_$ChangeLayoutImpl> get copyWith =>
      __$$ChangeLayoutImplCopyWithImpl<_$ChangeLayoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) changeLayout,
  }) {
    return changeLayout(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? changeLayout,
  }) {
    return changeLayout?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? changeLayout,
    required TResult orElse(),
  }) {
    if (changeLayout != null) {
      return changeLayout(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeLayout value) changeLayout,
  }) {
    return changeLayout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeLayout value)? changeLayout,
  }) {
    return changeLayout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeLayout value)? changeLayout,
    required TResult orElse(),
  }) {
    if (changeLayout != null) {
      return changeLayout(this);
    }
    return orElse();
  }
}

abstract class ChangeLayout implements LayoutEvent {
  const factory ChangeLayout({required final int count}) = _$ChangeLayoutImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ChangeLayoutImplCopyWith<_$ChangeLayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LayoutState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LayoutStateCopyWith<LayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutStateCopyWith<$Res> {
  factory $LayoutStateCopyWith(
          LayoutState value, $Res Function(LayoutState) then) =
      _$LayoutStateCopyWithImpl<$Res, LayoutState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$LayoutStateCopyWithImpl<$Res, $Val extends LayoutState>
    implements $LayoutStateCopyWith<$Res> {
  _$LayoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayoutStateImplCopyWith<$Res>
    implements $LayoutStateCopyWith<$Res> {
  factory _$$LayoutStateImplCopyWith(
          _$LayoutStateImpl value, $Res Function(_$LayoutStateImpl) then) =
      __$$LayoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$LayoutStateImplCopyWithImpl<$Res>
    extends _$LayoutStateCopyWithImpl<$Res, _$LayoutStateImpl>
    implements _$$LayoutStateImplCopyWith<$Res> {
  __$$LayoutStateImplCopyWithImpl(
      _$LayoutStateImpl _value, $Res Function(_$LayoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$LayoutStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LayoutStateImpl implements _LayoutState {
  const _$LayoutStateImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'LayoutState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutStateImplCopyWith<_$LayoutStateImpl> get copyWith =>
      __$$LayoutStateImplCopyWithImpl<_$LayoutStateImpl>(this, _$identity);
}

abstract class _LayoutState implements LayoutState {
  const factory _LayoutState({required final int count}) = _$LayoutStateImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$LayoutStateImplCopyWith<_$LayoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
