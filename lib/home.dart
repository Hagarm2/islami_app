import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/taps/Qurantap.dart';
import 'package:islami_app/taps/hadethtap.dart';
import 'package:islami_app/taps/radiotap.dart';
import 'package:islami_app/taps/sebhatab.dart';
import 'package:islami_app/taps/settingtaps.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'radio',
                backgroundColor: Color(0xffB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'sebha',
                backgroundColor: Color(0xffB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/1.png')),
                label: 'hadeth',
                backgroundColor: Color(0xffB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'quran',
                backgroundColor: Color(0xffB7935F)),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'setting',
                backgroundColor: Color(0xffB7935F)),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
        ),
        body: taps[index],
      ),
    ]);
  }

  List<Widget> taps = [Quran(), Sebha(), Hadeth(), RadioTap(), Setting()];
}
