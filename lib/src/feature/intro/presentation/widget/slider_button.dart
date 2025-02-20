import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/font/brand_font_family.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/src/theme/colors.dart';
import 'package:we_move/util/assets/assets.dart';

class SliderButton extends StatelessWidget {
  final Future? Function()? onSubmit;
  final bool disabled;
  const SliderButton({super.key, this.onSubmit, this.disabled = true});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      height: 50,
      borderRadius: 16,
      animationDuration: const Duration(milliseconds: 450),
      text: Strings.verifyNumber,
      textStyle: BrandTextStyle(
        fontFamily: BrandFontFamily.openSans,
        color: AppColor.white,
        fontSize: BrandFontSize.heeadline2,
      ),
      innerColor: AppColor.white,
      outerColor: disabled ? AppColor.grey7D : AppColor.primary,
      sliderButtonIcon: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: SvgPicture.asset(
            Assets.shieldIcon,
            width: 20,
            height: 20,
          ),
        ),
      ),
      sliderButtonIconPadding: 10,
      sliderButtonIconSize: 15,
      sliderRotate: false,
      onSubmit: onSubmit,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: BrandText.white(
                data: Strings.verifyNumber,
                fontSize: BrandFontSize.headline3,
              ),
            ),
            Positioned(
              right: 0,
              child: Center(
                child: SizedBox(
                  child: Shimmer.fromColors(
                      highlightColor: AppColor.grey7D,
                      baseColor: AppColor.white,
                      child: Row(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded),
                          Icon(Icons.arrow_forward_ios_rounded),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
