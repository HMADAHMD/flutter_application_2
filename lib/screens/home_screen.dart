import 'package:flutter/material.dart';
 
class HomeScreen extends StatelessWidget {
 const HomeScreen({super.key});
 
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         title: Text("Flutter Images"),
       ),
       body: Center(
         child: Column(
           children: [
             Image.asset(
               "assets/images/home_page.png",
               fit: BoxFit.contain,
             ),
             Text("HomeZe"),
           ],
         ),
       ),
     ),
   );
 }
}
