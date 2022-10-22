import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                  "Welcome",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(fontSize: 30.0, color: Colors.blue)),
                ),
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "email or username",
                  ),
                ),
                SizedBox(
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
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 4,
                        minimumSize: Size(110, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    onPressed: () {
                      print("Login Pressed");
                    },
                    child: Text(
                      "Login",
                      style:
                          GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
                    ))
              ],
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
