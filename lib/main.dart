import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/hadeathdetails.dart';
import 'package:islami_app/providers/myprovider.dart';
import 'package:islami_app/suradetals.dart';
import 'package:islami_app/themdata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(prov.languagecode),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Details.routeName: (context) => Details(),
        HadeathDet.routname: (context) => HadeathDet(),
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
