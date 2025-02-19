import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:we_move/route/route_name.dart';
import 'package:we_move/util/assets/assets.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      fetchData();
    });
  }

  Future<void> fetchData() async {
    /// check logged in or not and Navigate
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      context.go(RouteName.intro);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.logo,
        ),
      ),
    );
  }
}
