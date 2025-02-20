// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  bool get isPhoneEmailValid => throw _privateConstructorUsedError;
  String? get otpString => throw _privateConstructorUsedError;
  XFile? get selfiImage => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({bool isPhoneEmailValid, String? otpString, XFile? selfiImage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPhoneEmailValid = null,
    Object? otpString = freezed,
    Object? selfiImage = freezed,
  }) {
    return _then(_value.copyWith(
      isPhoneEmailValid: null == isPhoneEmailValid
          ? _value.isPhoneEmailValid
          : isPhoneEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      otpString: freezed == otpString
          ? _value.otpString
          : otpString // ignore: cast_nullable_to_non_nullable
              as String?,
      selfiImage: freezed == selfiImage
          ? _value.selfiImage
          : selfiImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPhoneEmailValid, String? otpString, XFile? selfiImage});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPhoneEmailValid = null,
    Object? otpString = freezed,
    Object? selfiImage = freezed,
  }) {
    return _then(_$LoginStateImpl(
      isPhoneEmailValid: null == isPhoneEmailValid
          ? _value.isPhoneEmailValid
          : isPhoneEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      otpString: freezed == otpString
          ? _value.otpString
          : otpString // ignore: cast_nullable_to_non_nullable
              as String?,
      selfiImage: freezed == selfiImage
          ? _value.selfiImage
          : selfiImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.isPhoneEmailValid = false,
      this.otpString = null,
      this.selfiImage = null});

  @override
  @JsonKey()
  final bool isPhoneEmailValid;
  @override
  @JsonKey()
  final String? otpString;
  @override
  @JsonKey()
  final XFile? selfiImage;

  @override
  String toString() {
    return 'LoginState(isPhoneEmailValid: $isPhoneEmailValid, otpString: $otpString, selfiImage: $selfiImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.isPhoneEmailValid, isPhoneEmailValid) ||
                other.isPhoneEmailValid == isPhoneEmailValid) &&
            (identical(other.otpString, otpString) ||
                other.otpString == otpString) &&
            (identical(other.selfiImage, selfiImage) ||
                other.selfiImage == selfiImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isPhoneEmailValid, otpString, selfiImage);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool isPhoneEmailValid,
      final String? otpString,
      final XFile? selfiImage}) = _$LoginStateImpl;

  @override
  bool get isPhoneEmailValid;
  @override
  String? get otpString;
  @override
  XFile? get selfiImage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
