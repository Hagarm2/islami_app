import 'package:flutter/material.dart';
import 'package:islami_app/themdata.dart';

import 'hadeathmodel.dart';

class HadeathDet extends StatelessWidget {
  // const HadeathDet({super.key});
  static const String routname = 'hadeathdetailes';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeathModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
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
                    args.Content[index],
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ));
                },
                itemCount: args.Content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
