import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:we_move/core/model/login/state_model/login_state_model.dart';

final loginProvider = StateNotifierProvider<LoginNotifierProvider, LoginState>(
    (ref) => LoginNotifierProvider(ref));

class LoginNotifierProvider extends StateNotifier<LoginState> {
  LoginNotifierProvider(this.ref) : super(const LoginState());

  final Ref ref;

  bool get isPhoneEmailValid => state.isPhoneEmailValid;

  bool get enableVerifyOtpButton => state.otpString != null;

  bool get showSelfi => state.selfiImage != null;

  XFile? get selfiImage => state.selfiImage;

  String phoneEmail = '';

  void updateIsPhoneEmailValid(bool valid) {
    state = state.copyWith(isPhoneEmailValid: valid);
  }

  set setPhoneEmail(String value) {
    phoneEmail = value;
  }

  void updateOtpString(String? value) {
    state = state.copyWith(otpString: value);
  }

  void updateSelfiImage(XFile? image) {
    state = state.copyWith(selfiImage: image);
  }
}
