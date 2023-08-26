import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/myspacer.dart';

import 'constant/style.dart';
import 'widgets/cardwidget.dart';

class read extends StatefulWidget {
  const read({super.key});

  @override
  State<read> createState() => _readState();
}

class _readState extends State<read> {
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: IconColor,
                ),
                myspacer(0.0, 20.0),
                Text("Read Article",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
          myspacer(20.0, 0.0),
          Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth, vheight,"Read for 1 Minutes",true),
          Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth, vheight,"Read for 1 Minutes",true),
          Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth, vheight,"Read for 1 Minutes",true),
          Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth, vheight,"Read for 1 Minutes",true),
          Card_widget(read_img, "How to preserve fruits..", "0.5", vwidth, vheight,"Read for 1 Minutes",true),
          
          
          
          
        ],
            ),
      ),
    );
  }
}
