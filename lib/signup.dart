import 'package:flutter/material.dart';
import 'package:login_project/sign_in.dart';
import 'package:login_project/widgets/mybutton.dart';
import 'package:login_project/widgets/myspacer.dart';
import 'package:login_project/widgets/mytextfield.dart';
import 'constant/images.dart';
import 'home.dart';

class signUp_page extends StatefulWidget {
  const signUp_page({super.key});

  @override
  State<signUp_page> createState() => _signUp_pageState();
}

class _signUp_pageState extends State<signUp_page> {
  TextEditingController namectrl = TextEditingController();
  TextEditingController Emailctrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();
  TextEditingController referctrl = TextEditingController();
  TextEditingController countryctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
           
            children: [
              Stack(
                children: const [
                  Image(image: AssetImage(background)),
                  Positioned(
                    child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    left: 50,
                    top: 150,
                  ),
                ],
              ),
              mytextfield(
                "Name",
                namectrl,
                vwidth,
                contact,
                null,
                keyboardType: TextInputType.text,
                valid: (value) {
                  if (value.isEmpty) {
                    return "Name is required";
                  } else if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
                    return "Please enter a valid name";
                  }
                  return null;
                },
              ),
              mytextfield(
                "Email",
                Emailctrl,
                vwidth,
                Email,
                null,
                keyboardType: TextInputType.emailAddress,
                valid: (value) {
                  if (value.isEmpty) {
                    return "Email is required";
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return "Please enter a valid email address";
                  }
                  return null;
                },
              ),
              mytextfield(
                "Phone",
                phonectrl,
                vwidth,
                phone,
                null,
                keyboardType: TextInputType.phone,
                valid: (value) {
                  if (value.isEmpty) {
                    return "Phone number is required";
                  } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return "Please enter a valid phone number";
                  }
                  return null;
                },
              ),
              mytextfield(
                "Refer Code(Optional)",
                referctrl,
                vwidth,
                refer,
                null,
                keyboardType: TextInputType.text,
                valid: (value) {
                  if (value.isNotEmpty &&
                      !RegExp(r"^[a-zA-Z0-9]+$").hasMatch(value)) {
                    return "Please enter a valid refer code";
                  }
                  return null;
                },
              ),
              mytextfield(
                "Country",
                countryctrl,
                vwidth,
                Country,
                null,
                keyboardType: TextInputType.text,
                valid: (value) {
                  if (value.isEmpty) {
                    return "Country is required";
                  }
                  return null;
                },
              ),
              mytextfield(
                "Password",
                passwordctrl,
                vwidth,
                password,
                password_icon,
                keyboardType: TextInputType.visiblePassword,
                valid: (value) {
                  if (value.isEmpty) {
                    return "Password is required";
                  } else if (value.length < 6) {
                    return "Password should be at least 6 characters";
                  }
                  return null;
                },
              ),
              myspacer(90.0, 0.0),
              Container(
                //height: 400,
                child: Column(
                  children: [
                    mybutton(
                        width: vwidth - 80,
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                          );
                        },
                        name: "Create",
                        color: true,
                        textcolor: true),
                    myspacer(20.0, 0.0),
                    mybutton(
                        width: vwidth - 80,
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sign_in()),
                          );
                        },
                        name: "Login",
                        color: false,
                        textcolor: false),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
