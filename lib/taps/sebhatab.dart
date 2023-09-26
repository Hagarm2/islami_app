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
          InkWell(
            onTap: () {
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
              /* else if(count==90){
                tasbeh="Sobhanallah";
                index=0;
                if(index==30){
                  count=30;
                }
                setState(() {

                });
              }*/
            },
            child: Image(
              image: AssetImage('assets/images/sebhashap.png'),
              width: 232,
              height: 300,
              alignment: Alignment.center,
            ),
          ),
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
}
