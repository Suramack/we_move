import 'package:flutter/material.dart';
import 'package:we_move/src/theme/colors.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home,
            size: 30,
            color: AppColor.primary,
          ),
          Icon(
            Icons.account_balance_wallet_sharp,
            size: 30,
            color: AppColor.greyA3,
          ),
          Icon(
            Icons.recycling_rounded,
            color: AppColor.greyA3,
            size: 30,
          ),
        ],
      ),
    );
  }
}
