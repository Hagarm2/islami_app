import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:islami_app/themdata.dart';

class Sebha extends StatefulWidget {
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int index = 0;
  int count = 0;
  double finalAngle = 0.0;

  String tasbeh = "Sobhanallah";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                  child: Container(
                      margin: EdgeInsets.only(
                        left: 50,
                      ),
                      child: Image.asset(
                        'assets/images/head_of_seb7a.png',
                      ))),
              Container(
                  margin: EdgeInsets.only(
                    top: 79,
                  ),
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            onSebhaclick();
                          },
                          child:
                              Image.asset('assets/images/body_of_seb7a.png')))),
            ],
          ),

          /*InkWell(
            onTap: () {

              onSebhaclick();
            },
            child: Image(
              image: AssetImage('assets/images/sebhashap.png'),
              width: 232,
              height: 300,
              alignment: Alignment.center,
            ),
          ),*/
          SizedBox(
            height: 20,
          ),
          Text(
            "Tasbeha number",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 69,
            height: 81,
            // color: mythemdata.primarycolor,
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('$index')),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 137,
            height: 51,
            // color: mythemdata.primarycolor,
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('$tasbeh')),
          )
        ],
      ),
    );
  }

  void onSebhaclick() {
    Transform.rotate(angle: 30);
    index += 1;
    count++;
    setState(() {});
    if (count == 30 && index == 30) {
      index = 0;
      tasbeh = "Alhamdlelah";
      setState(() {});
    } else if (count == 60 && index == 30) {
      index = 0;
      tasbeh = "AllahAkbar";
      setState(() {});
    } else if (count == 90 && index == 30) {
      index = 0;
      count = 0;
      tasbeh = "Sobhanallah";
      setState(() {});
    }
  }
}
