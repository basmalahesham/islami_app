import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  static const String routeName = "home_layout";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
