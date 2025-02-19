import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/widget/base_layout.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/src/theme/colors.dart';
import 'package:we_move/util/extentions/extensions.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BrandSpace.gap20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandVSpace(
              height: 100,
            ),
            const Icon(
              Icons.quiz_sharp,
              size: 55,
              color: AppColor.secondary,
            ),
            const BrandVSpace(
              height: 20,
            ),
            const BrandText.secondary(
              data: 'Strings.otpverification',
              textStyle: TextStyle(
                fontSize: BrandFontSize.headline1,
                color: AppColor.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const BrandVSpace(
              height: 10,
            ),
            BrandText.grey(
              data: '} ${'-...'}',
              textStyle: const TextStyle(
                fontSize: BrandFontSize.body,
                color: AppColor.grey166,
              ),
            ),
            const BrandVSpace(
              height: 20,
            ),
            OtpTextField(
              numberOfFields: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              borderRadius: BorderRadius.circular(12),
              fieldWidth: 40,
              fieldHeight: 40,
              cursorColor: AppColor.transparent,
              focusedBorderColor: AppColor.primary,
              borderColor: AppColor.primary,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (value) {
                if (value.length == 4) {
                  // regProvider.varifyOtp(context: context, otp: value);
                }
              },
            ),
            const BrandVSpace(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: context.deviceSize.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // if (regProvider.timer != 0)
                  ],
                ),
              ),
            ),
            const BrandVSpace(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
