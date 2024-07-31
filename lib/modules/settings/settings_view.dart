import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Language',
              textAlign: TextAlign.start,
            ),
            Container(
              margin: EdgeInsets.only(top: 20,),
              padding: EdgeInsets.symmetric(
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
                  Text('English'),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: theme.canvasColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Text(
              'Theme Mode',
              textAlign: TextAlign.start,
            ),
            Container(
              margin: EdgeInsets.only(top: 20,),
              padding: EdgeInsets.symmetric(
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
                  Text('Light'),
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
