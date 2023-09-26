import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/themdata.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        Image(image: AssetImage('assets/images/radio_image.png')),
        SizedBox(
          height: 50,
        ),
        Text(
          "Quran Kareem Radio",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.skip_previous,
                color: mythemdata.primarycolor,
                size: 40,
              ),
              Icon(Icons.play_arrow, color: mythemdata.primarycolor, size: 50),
              Icon(
                Icons.skip_next,
                color: mythemdata.primarycolor,
                size: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
