import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethDetailsView extends StatelessWidget {
  const HadethDetailsView({super.key});
  static const String routeName = "hadeth_details_view";
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethContent;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              ('assets/images/default_bg.png'),
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(
            top: 15,
            bottom: 80,
            left: 30,
            right: 30,
          ),
          padding: const EdgeInsets.only(
            top: 40,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8).withOpacity(0.75),
            borderRadius: BorderRadius.circular(25),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.title,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.play_circle,
                      color: Colors.black,
                    ),
                  ],
                ),
                Divider(
                  color: theme.canvasColor,
                  thickness: 1.5,
                  indent: 40,
                  endIndent: 40,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  child: Text(
                    args.content,
                    textDirection: TextDirection.rtl,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
