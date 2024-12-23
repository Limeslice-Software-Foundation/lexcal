// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UIState {
  double get calculatedShutterSpeed => throw _privateConstructorUsedError;

  /// Create a copy of UIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UIStateCopyWith<UIState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIStateCopyWith<$Res> {
  factory $UIStateCopyWith(UIState value, $Res Function(UIState) then) =
      _$UIStateCopyWithImpl<$Res, UIState>;
  @useResult
  $Res call({double calculatedShutterSpeed});
}

/// @nodoc
class _$UIStateCopyWithImpl<$Res, $Val extends UIState>
    implements $UIStateCopyWith<$Res> {
  _$UIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatedShutterSpeed = null,
  }) {
    return _then(_value.copyWith(
      calculatedShutterSpeed: null == calculatedShutterSpeed
          ? _value.calculatedShutterSpeed
          : calculatedShutterSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UIStateImplCopyWith<$Res> implements $UIStateCopyWith<$Res> {
  factory _$$UIStateImplCopyWith(
          _$UIStateImpl value, $Res Function(_$UIStateImpl) then) =
      __$$UIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double calculatedShutterSpeed});
}

/// @nodoc
class __$$UIStateImplCopyWithImpl<$Res>
    extends _$UIStateCopyWithImpl<$Res, _$UIStateImpl>
    implements _$$UIStateImplCopyWith<$Res> {
  __$$UIStateImplCopyWithImpl(
      _$UIStateImpl _value, $Res Function(_$UIStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatedShutterSpeed = null,
  }) {
    return _then(_$UIStateImpl(
      calculatedShutterSpeed: null == calculatedShutterSpeed
          ? _value.calculatedShutterSpeed
          : calculatedShutterSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UIStateImpl implements _UIState {
  const _$UIStateImpl({this.calculatedShutterSpeed = 0.0});

  @override
  @JsonKey()
  final double calculatedShutterSpeed;

  @override
  String toString() {
    return 'UIState(calculatedShutterSpeed: $calculatedShutterSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIStateImpl &&
            (identical(other.calculatedShutterSpeed, calculatedShutterSpeed) ||
                other.calculatedShutterSpeed == calculatedShutterSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculatedShutterSpeed);

  /// Create a copy of UIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIStateImplCopyWith<_$UIStateImpl> get copyWith =>
      __$$UIStateImplCopyWithImpl<_$UIStateImpl>(this, _$identity);
}

abstract class _UIState implements UIState {
  const factory _UIState({final double calculatedShutterSpeed}) = _$UIStateImpl;

  @override
  double get calculatedShutterSpeed;

  /// Create a copy of UIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIStateImplCopyWith<_$UIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
