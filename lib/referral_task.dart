import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/myspacer.dart';

import 'constant/style.dart';
import 'widgets/cardwidget.dart';
import 'widgets/refer_card_widget.dart';

class referral extends StatefulWidget {
  const referral({super.key});

  @override
  State<referral> createState() => _referralState();
}

class _referralState extends State<referral> {
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
                color: IconColor,
              ),
              myspacer(0.0, 20.0),
              Text("Referral Task",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          ),
        ),
        myspacer(20.0, 0.0),
        
        ref_Card_widget("1","Invite 5 Friends","3/5 invited","1.5",vwidth,true),
        ref_Card_widget("1","Invite 10 Friends","0/10 invited","1.5",vwidth,false),
        ref_Card_widget("1","Invite 20 Friends","0/20 invited","5",vwidth,false),
        ref_Card_widget("1","Invite 50 Friends","0/50 invited","7",vwidth,false),
        
        
        
      ],
          ),
    );
  }
}
