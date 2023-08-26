import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/myspacer.dart';

import 'widgets/cardwidget.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              myspacer(0.0, 20.0),
              Text("Videos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          ),
        ),
        myspacer(20.0, 0.0),
        Card_widget(addmob, "AdMob", "2", vwidth, vheight,"",false),
        Card_widget(app_lovin, "Applovin", "0.5", vwidth, vheight,"",false),
        Card_widget(lift_off, "Liftoff", "0.5", vwidth, vheight,"",false),
        Card_widget(add_Colony, "AdColony", "0.5", vwidth, vheight,"",false),
        Card_widget(unity, "Unity", "2", vwidth, vheight,"",false)
      ],
          ),
    );
  }
}
