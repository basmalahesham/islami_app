import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SuraTitleHeaderWidget extends StatelessWidget {
  const SuraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: [
        Divider(
          color: theme.canvasColor,
          thickness: 2,
          height: 0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.sura_num,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Container(
              color: theme.canvasColor,
              width: 2,
              height: 40,
            ),
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.sura_name,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        Divider(
          color: theme.canvasColor,
          thickness: 2,
          height: 0,
        ),
      ],
    );
  }
}
