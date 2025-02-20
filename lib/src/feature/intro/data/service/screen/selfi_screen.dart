import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_button.dart';
import 'package:we_move/design_system/widget/brand_intro_base_layout.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/src/feature/intro/data/service/provider/login_provider.dart';
import 'package:we_move/src/theme/colors.dart';

class SelfiScreen extends ConsumerStatefulWidget {
  const SelfiScreen({super.key});

  @override
  ConsumerState<SelfiScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<SelfiScreen> {
  late LoginNotifierProvider provider;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController otpController = TextEditingController();

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    ref.watch(loginProvider);
    provider = ref.read(loginProvider.notifier);
    return BrandIntroBaseLayout(
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
                BrandText(
                  data: Strings.greatLetUploadSelfie,
                  textStyle: BrandTextStyle(
                    fontSize: BrandFontSize.size24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap100,
                ),
                GestureDetector(
                  onTap: () async {
                    XFile? image =
                        await picker.pickImage(source: ImageSource.camera);
                    provider.updateSelfiImage(image);
                  },
                  child: SizedBox(
                    height: (MediaQuery.sizeOf(context).width * 0.5) + 25,
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            height: MediaQuery.sizeOf(context).width * 0.5,
                            decoration: BoxDecoration(
                              color: AppColor.greyD9,
                            ),
                            child: provider.showSelfi
                                ? Image.file(
                                    File(
                                      provider.selfiImage!.path,
                                    ),
                                    fit: BoxFit.cover,
                                  )
                                : Icon(
                                    Icons.person_rounded,
                                    color: AppColor.greyA3,
                                    size: 100,
                                  ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
                      title: Strings.continueS,
                      isDiable: !provider.showSelfi,
                      onTap: () {},
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
