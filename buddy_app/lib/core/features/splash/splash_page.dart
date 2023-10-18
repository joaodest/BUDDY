import 'package:buddy_app/core/features/auth/login_page.dart';
import 'package:buddy_app/core/ui/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var _animatedOpacity = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _animatedOpacity = 1.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: DecoratedBox(
        decoration: const BoxDecoration(color:  Constants.backgroundColor),
        child: Center(
          child: AnimatedOpacity(
            opacity: _animatedOpacity,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            onEnd: () => Navigator.of(context).pushAndRemoveUntil(
              PageRouteBuilder(
                settings: const RouteSettings(name: '/auth/login'),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const LoginPage(),
                transitionsBuilder: (_, animation, __, child) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
              (route) => false,
            ),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              child: Image.asset('assets/images/buddyLogo.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
