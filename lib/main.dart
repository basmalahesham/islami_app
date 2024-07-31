import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/modules/hadeth/hadeth_details_view.dart';
import 'package:islami_app/modules/quran/sura_details_view.dart';
import 'package:islami_app/modules/splash/splash_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      themeMode: provider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.currentLocal),
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        SuraDetailsView.routeName: (context) => const SuraDetailsView(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
