import 'package:flutter/material.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/widgets/myspacer.dart';

import '../constant/style.dart';

Widget ref_Card_widget(title1, title2,title3, number, vwidth, bool value) {
  return Container(
    width: vwidth - 30,
    height: 90,
    child: Card(
      //color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
              color:borderColor )),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(title1),
          backgroundColor: primaryColor
        ),
        
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title2,
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
              ),
              value
                  ? Row(children: [
                      Container(
                        height: 5,
                        width: vwidth-300,
                        color: primaryColor,
                      ),
                      Container(
                        height: 5,
                        width:  50,                      
                        color:basicColor
                      ),
                    ])
                  : Row(children: [
                      Container(
                        height: 5,
                        width: 150,
                        color: basicColor
                      ),
                    ]),
                    Row(
                      children: [
                        Text(title3,style: TextStyle(fontSize: 12),),
                        Image(image: AssetImage(birthday_card),width: 20,height: 20,),
                       
                      ],
                    )
            ],
          ),
        ),
        trailing: Container(
          //height: 100,
          
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myspacer(5.0, 0.0),
              Container(

                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(6)),
                height: 25,
                width: 60,
                child: Center(child: Text("Pending",style: TextStyle(fontSize: 10))),
              ),
              Text(number),
              Text("EF coins",style: TextStyle(fontSize:8),)
            ],
          ),
        ),
      ),
    ),
  );
}
