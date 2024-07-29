import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/sura_details_view.dart';

class SuraNameWidget extends StatelessWidget {
  const SuraNameWidget(
      {super.key, required this.suraName, required this.suraNumber});
  final String suraName;
  final int suraNumber;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsView.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              '${suraNumber+1}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            color: theme.primaryColor,
            width: 2,
            height: 40,
          ),
          Expanded(
            child: Text(
              suraName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
