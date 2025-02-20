import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/widget/brand_sized_box.dart';
import 'package:we_move/design_system/widget/brand_text_field.dart';
import 'package:we_move/src/feature/home/presentation/widget/bottom_nav_bar_widget.dart';
import 'package:we_move/src/theme/colors.dart';
import 'package:we_move/util/assets/assets.dart';

class BaseLayout extends StatelessWidget {
  final Widget? child;
  final PreferredSizeWidget? appBar;
  final bool showBackButton;
  final Function? onBackTap;
  final double? childTopPosition;
  final bool showBottomNavbar;
  const BaseLayout({
    super.key,
    this.child,
    this.appBar,
    this.showBackButton = false,
    this.onBackTap,
    this.childTopPosition,
    this.showBottomNavbar = false,
  });

  @override
  Widget build(BuildContext context) {
    // double top = childTopPosition ?? (MediaQuery.sizeOf(context).height * 0.25);
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.greyFD,
        appBar: appBar,
        resizeToAvoidBottomInset: true,
        bottomNavigationBar:
            showBottomNavbar ? BottomNavBarWidget() : SizedBox(),
        body: SizedBox.expand(
          child: Stack(
            children: [
              Positioned.fill(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Opacity(
                  opacity: 0.2,
                  child: SvgPicture.asset(
                    Assets.bgOutlineImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Opacity(
                  opacity: 0.85,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BrandTextField(
                            keyboardType: TextInputType.emailAddress,
                            hintText: Strings.search,
                            filled: true,
                            onChanged: (val) {},
                          ),
                          BrandVSpace(
                            height: BrandSpace.gap18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (showBackButton)
                Positioned(
                  top: 50,
                  left: 20,
                  child: InkWell(
                    onTap: () {
                      onBackTap?.call();
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                ),
              Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.sizeOf(context).height * 0.25,
                child: child ?? SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
