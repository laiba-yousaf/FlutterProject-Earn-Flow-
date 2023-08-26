import 'package:flutter/material.dart';
import 'package:login_project/constant/images.dart';
import 'package:login_project/constant/style.dart';
import 'package:login_project/widgets/myspacer.dart';

Widget dash_widget(icon, title_, number,vwidth,vheight,title_2) {
  return Container(
    //color: Colors.black,
    child: Container(
      width: vwidth-30,
      //height: 60,
      //color: Color.fromARGB(255, 12, 11, 11).withOpacity(1.0),
      
      child: Card(
       
        color: whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side:
                BorderSide(color:borderColor , width: 1)),
        child: ListTile(
          leading: Image(image: AssetImage(icon)),
          title: Text(title_),
          subtitle: Row(
            children: [
              Image(image: AssetImage(circle_gold),width: 20,height: 20,),
              Text(title_2)
            ],
          ),
          trailing: Text(number)
        ),
      ),
    ),
  );
}
