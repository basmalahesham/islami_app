import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_provider.dart';
import 'language_bottom_sheet.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 35,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              textAlign: TextAlign.start,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet();
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: Border.all(color: theme.canvasColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.arabic,
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: theme.canvasColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.theme,
              textAlign: TextAlign.start,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet();
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: Border.all(color: theme.canvasColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.light,
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: theme.canvasColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomSheet(),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
    );
  }
}
