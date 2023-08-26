import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/myspacer.dart';

import 'constant/style.dart';
import 'widgets/cardwidget.dart';

class game_page extends StatefulWidget {
  const game_page({super.key});

  @override
  State<game_page> createState() => _game_pageState();
}

class _game_pageState extends State<game_page> {
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color:IconColor,
                ),
                myspacer(0.0, 20.0),
                Text("Play Games",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
          myspacer(20.0, 0.0),
          Card_widget(game_img1, "Guys Tumple Guts", "0.5", vwidth, vheight,"Play and earn upto 10 EF",true),
          Card_widget(game_img2, "Guys Tumple Guts", "0.5", vwidth, vheight,"Play and earn upto 10 EF",true),
          Card_widget(game_img3, "Guys Tumple Guts", "0.5", vwidth, vheight,"Play and earn upto 10 EF",true),
          Card_widget(game_img4, "Guys Tumple Guts", "0.5", vwidth, vheight,"Play and earn upto 10 EF",true),
          
          
          
          
        ],
            ),
      ),
    );
  }
}
