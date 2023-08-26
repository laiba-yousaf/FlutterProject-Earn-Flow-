import 'package:flutter/material.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/myspacer.dart';

import '../constant/style.dart';

Widget Card_widget(icon, title_, number,vwidth,vheight,title_2,bool val) {
  return Container(
    //color: Colors.black,
    child: Container(
      width: vwidth-30,
      //height: vheight-0.5,
      //color: Color.fromARGB(255, 12, 11, 11).withOpacity(1.0),
      
      child: Card(
       
        color: whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side:
                BorderSide(color: borderColor, width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8),
          child: ListTile(
            leading: Image(image: AssetImage(icon)),
            title: val?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title_,style: TextStyle(fontSize: 14),),
                Text(title_2,style: TextStyle(fontSize: 14),)
              ],
            ):Text(title_),
            trailing: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(6)),
              height:30,
              width: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Image(image: AssetImage(circle_gold),width: 20,height: 20,),
                    myspacer(0.0, 8.0),
                    Column(
                      children: [
                        Text(number,style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("EF coins",style: TextStyle(fontSize:6),)
                      ],
                    )
                  ],
                ),
              ),
              
             
            ),
          ),
        ),
      ),
    ),
  );
}
