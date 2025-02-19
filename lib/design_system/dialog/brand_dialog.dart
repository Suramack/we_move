// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/widget/brand_button.dart';
import 'package:we_move/design_system/widget/brand_text.dart';
import 'package:we_move/src/theme/colors.dart';

abstract class BrandDialog {
  static showDialogs({required BuildContext context, String? message}) async {
    await Future.delayed(Duration(seconds: 3));
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            BrandButton.primary(
              onTap: () {
                context.pop();
              },
              title: Strings.ok,
            )
          ],
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BrandText(
                data: message ?? Strings.message,
              ),
            ),
          ),
        );
      },
    );
  }
}
