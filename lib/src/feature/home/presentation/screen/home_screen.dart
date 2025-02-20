import 'package:flutter/material.dart';
import 'package:we_move/design_system/font/brand_font.dart';
import 'package:we_move/design_system/label/label.dart';
import 'package:we_move/design_system/style/brand_space.dart';
import 'package:we_move/design_system/widget/_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      showBottomNavbar: true,
      child: Center(
        child: Column(
          children: [
            BrandVSpace(
              height: BrandSpace.gap100,
            ),
            BrandText.primary(
              data: Strings.home,
              fontSize: BrandFontSize.headline1,
            ),
          ],
        ),
      ),
    );
  }
}
