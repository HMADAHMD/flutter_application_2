import 'dart:ui';

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
                    border: OutlineInputBorder(),
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
                      border: OutlineInputBorder(), labelText: "password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 4,
                        minimumSize: Size(110, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                    onPressed: () {
                      print("Login Pressed");
                      Navigator.pushNamed(context, MyRoutes.homeroute);
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
