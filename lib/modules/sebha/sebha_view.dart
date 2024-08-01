import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../provider/settings_provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double angle = 0.0;
  List<String> zekr = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
  ];
  int index = 0;
  int counterButton = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -72,
                child: Image.asset(
                  provider.currentTheme != ThemeMode.dark
                      ? 'assets/images/head_sebha_logo.png'
                      : 'assets/images/head_sebha_dark.png',
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    angle--;
                  });
                },
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    provider.currentTheme != ThemeMode.dark
                        ? 'assets/images/body_sebha_logo.png'
                        : 'assets/images/body_sebha_dark.png',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.number_of_tasbehat,
            style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              '$counterButton',
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          /*Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: theme.canvasColor,
              ),
              onPressed: () {
                setState(() {
                  counterButton++;
                });
              },
              child: Text(
                '$counterButton',
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),*/
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              zekrCounter();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: theme.canvasColor,
              ),
              padding: const EdgeInsets.all(6),
              child: Text(
                zekr[index],
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /*decreasedAngle() {
    setState(() {
      angle++;
    });
  }*/

  zekrCounter() {
    angle += 0.1;
    counterButton++;
    if (counterButton == 33) {
      index++;
      counterButton = 0;
    }
    if (index > 3) {
      index = 0;
    }
    setState(() {});
  }
}
