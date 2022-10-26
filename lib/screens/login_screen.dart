import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  var btnpressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login",
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome $name",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 30.0,
                  )),
                ),
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "email or username",
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                    print(name);
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: "password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         elevation: 4,
                //         minimumSize: Size(110, 50),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(40),
                //         )),
                //     onPressed: () {
                //       print("Login Pressed");
                //       Navigator.pushNamed(context, MyRoutes.homeroute);
                //     },
                //     child: Text(
                //       "Login",
                //       style:
                //           GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
                //     )),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (btnpressed == false) {
                        btnpressed = true;
                      } else if (btnpressed == true) {
                        btnpressed = false;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 1),
                    height: 70,
                    width: btnpressed ? 70 : 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                              offset: Offset(.1, .1),
                              color: Color.fromARGB(255, 92, 92, 92),
                              blurRadius: 2.0,
                              spreadRadius: 2.0)
                        ],
                        borderRadius:
                            BorderRadius.circular(btnpressed ? 70 : 5)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
