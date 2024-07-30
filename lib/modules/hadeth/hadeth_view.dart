import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadeth/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (allHadeth.isEmpty) readFile();
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Divider(
            thickness: 1.5,
            color: theme.primaryColor,
            indent: 20,
            endIndent: 20,
          ),
           Text(
            'الاحاديث',
            style: theme.textTheme.bodyMedium,
          ),
          Divider(
            thickness: 1.5,
            color: theme.primaryColor,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetailsView.routeName,
                    arguments: allHadeth[index],
                  );
                },
                child: Text(
                  allHadeth[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              itemCount: allHadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  readFile() async {
    List<HadethContent> hadethList = [];
    String hadethText = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethList = hadethText.split('#');

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf('\n');
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent allHadethContent = HadethContent(title, content);
      hadethList.add(allHadethContent);
    }
    allHadeth = hadethList;
    setState(() {});
  }
}

class HadethContent {
  String title;
  String content;
  HadethContent(this.title, this.content);
}
