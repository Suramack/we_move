
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:we_move/route/navigation_service.dart';
import 'package:we_move/route/routes.dart';
import 'package:we_move/src/theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WeMove All',
      scaffoldMessengerKey: NavigationService.scaffoldMessengerKey,
      theme: Themes.lightTheme(),
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
    );
  } 
}
