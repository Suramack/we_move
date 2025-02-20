import 'dart:io';

import 'package:flutter/material.dart';
import 'package:we_move/src/theme/colors.dart';

class SelfiUploadWidget extends StatelessWidget {
  final Function? onTap;
  final bool showSelfi;
  final String path;
  const SelfiUploadWidget({
    super.key,
    this.onTap,
    this.showSelfi = false,
    this.path = '',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        onTap?.call();
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
                child: showSelfi
                    ? Image.file(
                        File(
                          path,
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
    );
  }
}
