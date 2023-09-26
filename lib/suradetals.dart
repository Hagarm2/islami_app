import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/suraname.dart';
import 'package:islami_app/themdata.dart';

class Details extends StatefulWidget {
  static const String routeName = 'suradetals';

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Suraname;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  color: mythemdata.primarycolor,
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                    verses[index],
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ));
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(index) async {
    String file = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = file.split('\n');
    print(lines);
    verses = lines;
    setState(() {});
  }
}
