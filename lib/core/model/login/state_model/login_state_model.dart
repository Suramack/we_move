import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'login_state_model.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isPhoneEmailValid,
    @Default(null) String? otpString,
    @Default(null) XFile? selfiImage,
  }) = _LoginState;
}
