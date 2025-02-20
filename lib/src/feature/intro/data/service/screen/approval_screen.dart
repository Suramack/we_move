// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/style/text_style.dart';
import 'package:we_move/design_system/widget/brand_intro_base_layout.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/route/route_name.dart';
import 'package:we_move/src/feature/intro/data/service/provider/login_provider.dart';
import 'package:we_move/src/theme/colors.dart';

class ApprovalScreen extends ConsumerStatefulWidget {
  const ApprovalScreen({super.key});

  @override
  ConsumerState<ApprovalScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<ApprovalScreen> {
  late LoginNotifierProvider provider;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController otpController = TextEditingController();

  final ImagePicker picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(RouteName.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(loginProvider);
    provider = ref.read(loginProvider.notifier);
    return BrandIntroBaseLayout(
      showSafeAreaTop: false,
      childTopPosition: MediaQuery.sizeOf(context).height * 0.15,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BrandVSpace(
                  height: BrandSpace.gap100,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.check_rounded,
                    color: AppColor.white,
                    size: 50,
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap40,
                ),
                BrandText(
                  data: Strings.congratulationPleasewait,
                  textAlign: TextAlign.center,
                  textStyle: BrandTextStyle(
                    fontSize: BrandFontSize.headline1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap20,
                ),
                BrandText(
                  data: Strings.weAreThrilledToExtend,
                  textAlign: TextAlign.center,
                  textStyle: BrandTextStyle(
                    fontSize: BrandFontSize.headline3,
                  ),
                ),
                BrandVSpace(
                  height: BrandSpace.gap40,
                ),
                CircularProgressIndicator()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
