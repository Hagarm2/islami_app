import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeathdetails.dart';
import 'package:islami_app/hadeathmodel.dart';
import 'package:islami_app/themdata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  //const Hadeth({super.key});
  List<HadeathModel> Allahadeath = [];

  @override
  Widget build(BuildContext context) {
    if (Allahadeath.isEmpty) {
      loadHadeath();
    }
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/ahadeth_image.png')),
            Divider(
              thickness: 3,
              color: mythemdata.primarycolor,
            ),
            Text(AppLocalizations.of(context)!.ahadeath),
            Divider(
              thickness: 3,
              color: mythemdata.primarycolor,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => Divider(
                endIndent: 40,
                indent: 40,
                thickness: 1,
                color: mythemdata.primarycolor,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadeathDet.routname,
                        arguments: Allahadeath[index]);
                  },
                  child: Text(
                    Allahadeath[index].title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: Allahadeath.length,
            )
          ],
        ),
      ),
    );
  }

  void loadHadeath() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadeathlist = ahadeth.split("#");
      for (int i = 0; i < ahadeathlist.length; i++) {
        String hadeath1 = ahadeathlist[i];
        List<String> hadeathline = hadeath1.trim().split('\n');
        String hadeathtitle = hadeathline[0];
        hadeathline.removeAt(0);
        List<String> content = hadeathline;
        HadeathModel hadeathModel = HadeathModel(hadeathtitle, content);
        print(hadeathModel.title);
        Allahadeath.add(hadeathModel);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}
