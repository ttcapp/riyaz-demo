import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}


 String avatarSrc= "https://static.thenounproject.com/png/2416926-200.png";
double conHeight=50;
double conwidth=50;

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Page"),
      ),

      body: Column(
        children: [
          
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conwidth=50;
              });
            },
            onTap: (){
              setState(() {
                conHeight=200;
                conwidth=200;
              });
              },
            child: AnimatedContainer(
              height: conHeight,
                width: conwidth,
                duration: Duration(milliseconds: 3000),
            child: Image.network(avatarSrc)),
          ),
        ],
      )
    );
  }
}

