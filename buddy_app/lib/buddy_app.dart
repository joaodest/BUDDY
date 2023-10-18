import 'package:asyncstate/asyncstate.dart';
import 'package:buddy_app/core/features/auth/login_page.dart';
import 'package:buddy_app/core/features/splash/splash_page.dart';
import 'package:buddy_app/core/ui/buddy_loader.dart';
import 'package:buddy_app/core/ui/buddy_theme.dart';

import 'package:flutter/material.dart';

class BuddyApp extends StatelessWidget {
  const BuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BuddyLoader(),
      builder: (asyncNavigatorBuilder) => MaterialApp(
        title: "Buddy App",
        theme: BuddyTheme.themeData,
        routes: {
          '/': (_) => const SplashPage(),
          '/auth/login/': (_) => const LoginPage()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
