import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "splash";
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.of(context).pushReplacementNamed(routeName),
    );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/splash.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
