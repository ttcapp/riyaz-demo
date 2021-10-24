import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riyaz_demo/second_page.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:riyaz_demo/my_home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: SlideDrawer(
        brightness: Brightness.dark,
        backgroundColor: Colors.cyan,
        offsetFromRight: 250.0,
        items: [
          MenuItem('Home',
              onTap: (){},
              icon: Icons.home),

          MenuItem('Second Page',
              onTap: (){
            navigatorKey.currentState!.push(MaterialPageRoute(builder: (context)=>SecondPage())
            );
              },icon:
              Icons.add_to_photos_sharp),

          MenuItem('Third Page',
              onTap: (){},icon:
              Icons.add_box_outlined),

          MenuItem('Profile',
              onTap: (){},icon:
              Icons.account_box_sharp),

          MenuItem('Setting',
              onTap: (){},icon:
              Icons.settings),
        ],
        child: MyHomePage(),
      ),
    );
  }
}
