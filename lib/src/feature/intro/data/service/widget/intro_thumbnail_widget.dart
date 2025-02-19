import 'package:flutter/material.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/font/brand_font_family.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';

class IntroThumbnailWidget extends StatelessWidget {
  final String image, title, subTite;
  const IntroThumbnailWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTite});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
        ),
        BrandVSpace(
          height: BrandSpace.gap12,
        ),
        BrandText.secondary(
          data: title,
          textStyle: BrandTextStyle(fontSize: BrandFontSize.size24),
        ),
        BrandVSpace(
          height: BrandSpace.gap12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: BrandText.secondary(
            data: subTite,
            textStyle: BrandTextStyle(
              fontSize: BrandFontSize.headline3,
              fontFamily: BrandFontFamily.openSans,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
