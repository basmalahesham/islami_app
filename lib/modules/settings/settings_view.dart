import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              textAlign: TextAlign.start,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.canvasColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.english,),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: theme.canvasColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Text(
              AppLocalizations.of(context)!.theme,
              textAlign: TextAlign.start,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.canvasColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.light,),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: theme.canvasColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
