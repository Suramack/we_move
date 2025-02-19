import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/font/brand_font_family.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_intro_base_layout.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/design_system/widget/brand_text_field.dart';
import 'package:we_move/src/theme/colors.dart';
import 'package:we_move/util/assets/assets.dart';
import 'package:we_move/util/regular_expression/regular_expression.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BrandIntroBaseLayout(
      showBackButton: true,
      showSafeAreaTop: false,
      onBackTap: () {
        context.pop();
      },
      child: Column(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: BrandText.secondary(
              data: Strings.weNeedToSendOTP,
              textStyle: BrandTextStyle(
                fontSize: BrandFontSize.headline3,
                fontFamily: BrandFontFamily.openSans,
                fontWeight: FontWeight.w400,
                color: AppColor.grey7D,
              ),
            ),
          ),
          BrandVSpace(
            height: BrandSpace.gap20,
          ),
          Form(
            key: formKey,
            child: BrandTextField(
              // controller: emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: Strings.enterMobEmail,
              validator: (val) {
                if (val?.isEmpty ?? true) {
                  return 'Strings.pleaseEnterAValidEmail';
                } else if (!RegularExpression.email.hasMatch(val!)) {
                  return 'Strings.pleaseEnterAValidEmail';
                }
                return '';
              },
            ),
          ),
        ],
      ),
    );
  }
}
