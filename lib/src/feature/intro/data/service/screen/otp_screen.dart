import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/font/brand_font_family.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_intro_base_layout.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/route/route_name.dart';
import 'package:we_move/src/feature/intro/data/service/provider/login_provider.dart';
import 'package:we_move/src/feature/intro/data/service/widget/slider_button.dart';
import 'package:we_move/src/theme/colors.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  late LoginNotifierProvider provider;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.watch(loginProvider);
    provider = ref.read(loginProvider.notifier);
    return BrandIntroBaseLayout(
      showBackButton: true,
      showSafeAreaTop: false,
      childTopPosition: MediaQuery.sizeOf(context).height * 0.15,
      onBackTap: () {
        context.pop();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            BrandVSpace(
              height: BrandSpace.gap20,
            ),
            BrandText(
              data: Strings.otpVerification,
              textStyle: BrandTextStyle(
                fontSize: BrandFontSize.size24,
                fontWeight: FontWeight.w600,
              ),
            ),
            BrandVSpace(
              height: BrandSpace.gap20,
            ),
            BrandText.secondary(
              data: Strings.aVerificationCodeHas + provider.phoneEmail,
              textAlign: TextAlign.center,
              textStyle: BrandTextStyle(
                fontSize: BrandFontSize.headline3,
                fontFamily: BrandFontFamily.openSans,
                fontWeight: FontWeight.w400,
                color: AppColor.grey7D,
              ),
            ),
            BrandVSpace(
              height: BrandSpace.gap40,
            ),
            OtpTextField(
              numberOfFields: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              borderRadius: BorderRadius.circular(12),
              fieldWidth: 68,
              fieldHeight: 65,
              cursorColor: AppColor.transparent,
              focusedBorderColor: AppColor.primary,
              borderColor: AppColor.primary,
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                provider.updateOtpString(null);
              },
              autoFocus: true,
              onSubmit: (value) {
                provider.updateOtpString(value);
              },
            ),
            BrandVSpace(
              height: BrandSpace.gap20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SliderButton(
                disabled: !provider.enableVerifyOtpButton,
                onSubmit: provider.enableVerifyOtpButton
                    ? () {
                        context.go(RouteName.selfi);

                        return;
                      }
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
