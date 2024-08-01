import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "splash";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.of(context).pushReplacementNamed(HomeLayout.routeName),
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.getMainSplash(),
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
