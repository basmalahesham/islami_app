import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/widgets/suraName_widget.dart';

class SuraDetailsView extends StatelessWidget {
  const SuraDetailsView({super.key});

static const String routeName = 'sura_details';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetails;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 15,bottom: 80,left: 30,right: 30,),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
           child: Column(
             children: [

             ],
           ),
        ),
      ),
    );
  }
}
