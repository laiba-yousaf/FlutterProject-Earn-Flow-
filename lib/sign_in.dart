import 'package:flutter/material.dart';
import 'package:login_project/signup.dart';
import 'package:login_project/widgets/mybutton.dart';
import 'package:login_project/widgets/myspacer.dart';
import 'package:login_project/widgets/mytextfield.dart';
import 'Reset_password.dart';
import 'constant/images.dart';
import 'constant/style.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  TextEditingController Emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: const [
                Image(image: AssetImage(background)),
                Positioned(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  left: 35,
                  top: 200,
                ),
              ],
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
            //myspacer(0.0, 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forget Password?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Reset_password()),
                      );
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(color:primaryColor),
                    ))
              ],
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
                          MaterialPageRoute(builder: (context) => sign_in()),
                        );
                      },
                      name: "Login",
                      color: true,
                      textcolor: true),
                  myspacer(20.0, 0.0),
                  mybutton(
                      width: vwidth - 80,
                      function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signUp_page()),
                        );
                      },
                      name: "Create Account",
                      color: false,
                      textcolor: false),
                ],
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
