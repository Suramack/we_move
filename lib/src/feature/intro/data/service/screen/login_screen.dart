import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/font/brand_font_family.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_button.dart';
import 'package:we_move/design_system/widget/brand_intro_base_layout.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/design_system/widget/brand_text_field.dart';
import 'package:we_move/route/route_name.dart';
import 'package:we_move/src/feature/intro/data/service/provider/login_provider.dart';
import 'package:we_move/src/theme/colors.dart';
import 'package:we_move/util/assets/assets.dart';
import 'package:we_move/util/regular_expression/regular_expression.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late LoginNotifierProvider provider;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emaiPhoneController = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BrandVSpace(
                  height: BrandSpace.gap20,
                ),
                Image.asset(
                  Assets.logo,
                  height: 100,
                ),
                BrandVSpace(
                  height: BrandSpace.gap40,
                ),
                BrandText(
                  data: Strings.login,
                  textStyle: BrandTextStyle(
                    fontSize: BrandFontSize.size24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap20,
                ),
                BrandText.secondary(
                  data: Strings.weNeedToSendOTP,
                  textStyle: BrandTextStyle(
                    fontSize: BrandFontSize.headline3,
                    fontFamily: BrandFontFamily.openSans,
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey7D,
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap20,
                ),
                Form(
                  key: formKey,
                  child: BrandTextField(
                    controller: emaiPhoneController,
                    keyboardType: TextInputType.emailAddress,
                    hintText: Strings.enterMobEmail,
                    validator: (val) {
                      if (val?.isEmpty ?? true) {
                        return Strings.pleaseEnterEmailOrPhone;
                      } else if (!RegularExpression.emailOrPhone
                          .hasMatch(val!)) {
                        return Strings.notAValidEmailOrPhone;
                      }
                      provider.setPhoneEmail = val;
                      return null;
                    },
                    onChanged: (val) {
                      provider.updateIsPhoneEmailValid(
                          formKey.currentState?.validate() ?? false);
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 100,
                    height: 48,
                    child: BrandButton.primary(
                      title: Strings.verify,
                      isDiable: !provider.isPhoneEmailValid,
                      onTap: () {
                        context.push(RouteName.otp);
                      },
                    ),
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
