import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_project/constant/style.dart';

Widget mybutton(
   {required  width, required Null Function() function, required String name,required bool color,required bool textcolor})
  {
   return SizedBox(
    width: width,
    height: 50,
     child: ElevatedButton(
     
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color?primaryColor:whiteColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: primaryColor),
          
          ),
        ),
      ),
     
      onPressed: function,
      child: Text(name,style: TextStyle(color: textcolor?whiteColor:IconColor,fontSize: 20,fontWeight: FontWeight.bold),),
     ),
   );
}