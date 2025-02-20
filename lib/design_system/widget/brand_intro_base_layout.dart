import 'package:flutter/material.dart';
import 'package:we_move/src/theme/colors.dart';
import 'package:we_move/util/assets/assets.dart';

class BrandIntroBaseLayout extends StatelessWidget {
  final Widget child;
  final bool showBackButton;
  final bool showSafeAreaTop;
  final Function? onBackTap;
  final double? childTopPosition;
  const BrandIntroBaseLayout({
    super.key,
    required this.child,
    this.showBackButton = false,
    this.showSafeAreaTop = true,
    this.onBackTap,
    this.childTopPosition,
  });

  @override
  Widget build(BuildContext context) {
    double top = childTopPosition ?? (MediaQuery.sizeOf(context).height * 0.25);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        top: showSafeAreaTop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                    child: Image.asset(
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
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(12),
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
                  top: childTopPosition ?? top,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height - top,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.greyE4,
                            blurRadius: 3,
                            offset: Offset(4, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: child,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
