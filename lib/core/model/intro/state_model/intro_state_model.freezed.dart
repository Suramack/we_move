// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntroState {
  int get carouselCurrentIndex => throw _privateConstructorUsedError;

  /// Create a copy of IntroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntroStateCopyWith<IntroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroStateCopyWith<$Res> {
  factory $IntroStateCopyWith(
          IntroState value, $Res Function(IntroState) then) =
      _$IntroStateCopyWithImpl<$Res, IntroState>;
  @useResult
  $Res call({int carouselCurrentIndex});
}

/// @nodoc
class _$IntroStateCopyWithImpl<$Res, $Val extends IntroState>
    implements $IntroStateCopyWith<$Res> {
  _$IntroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntroState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselCurrentIndex = null,
  }) {
    return _then(_value.copyWith(
      carouselCurrentIndex: null == carouselCurrentIndex
          ? _value.carouselCurrentIndex
          : carouselCurrentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntroStateImplCopyWith<$Res>
    implements $IntroStateCopyWith<$Res> {
  factory _$$IntroStateImplCopyWith(
          _$IntroStateImpl value, $Res Function(_$IntroStateImpl) then) =
      __$$IntroStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int carouselCurrentIndex});
}

/// @nodoc
class __$$IntroStateImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$IntroStateImpl>
    implements _$$IntroStateImplCopyWith<$Res> {
  __$$IntroStateImplCopyWithImpl(
      _$IntroStateImpl _value, $Res Function(_$IntroStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselCurrentIndex = null,
  }) {
    return _then(_$IntroStateImpl(
      carouselCurrentIndex: null == carouselCurrentIndex
          ? _value.carouselCurrentIndex
          : carouselCurrentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IntroStateImpl implements _IntroState {
  const _$IntroStateImpl({this.carouselCurrentIndex = 0});

  @override
  @JsonKey()
  final int carouselCurrentIndex;

  @override
  String toString() {
    return 'IntroState(carouselCurrentIndex: $carouselCurrentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntroStateImpl &&
            (identical(other.carouselCurrentIndex, carouselCurrentIndex) ||
                other.carouselCurrentIndex == carouselCurrentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carouselCurrentIndex);

  /// Create a copy of IntroState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntroStateImplCopyWith<_$IntroStateImpl> get copyWith =>
      __$$IntroStateImplCopyWithImpl<_$IntroStateImpl>(this, _$identity);
}

abstract class _IntroState implements IntroState {
  const factory _IntroState({final int carouselCurrentIndex}) =
      _$IntroStateImpl;

  @override
  int get carouselCurrentIndex;

  /// Create a copy of IntroState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntroStateImplCopyWith<_$IntroStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
