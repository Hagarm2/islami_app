import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/suradetals.dart';
import 'package:islami_app/themdata.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Details.routeName: (context) => Details(),
      },
      /*initialRoute:HomeScreen.routeName ,
      routes:{
        HomeScreen.routeName:(context) => HomeScreen()
      } ,*/
      // home: HomeScreen(),
      theme: mythemdata.lightthem,
      darkTheme: mythemdata.darkthem,
    );
  }
}
