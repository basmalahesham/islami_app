import 'package:flutter/material.dart';

class SuraDetailsView extends StatelessWidget {
  const SuraDetailsView({super.key});

static const String routeName = 'sura_details';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(),
      ),
    );
  }
}
