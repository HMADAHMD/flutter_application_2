import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: LoginScreen(),
      routes: {
        MyRoutes.homeroute: (context) => HomeScreen(),
        "/login":(context) => LoginScreen(),
      },
    );
  }
}
