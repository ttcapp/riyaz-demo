import 'package:flutter/material.dart';

String avatarSrc= "https://static.thenounproject.com/png/2416926-200.png";
String btntext1= "Button One";


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Riyaz Ahmed"),

      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image 3.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black12.withOpacity(0.2), BlendMode.dstATop
            )
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:  width*0.25,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(avatarSrc),
                        fit: BoxFit.fitHeight,
                      ),
                      border: Border.all(width: 3,
                          color: Colors.deepOrange),
                      borderRadius: BorderRadius.all(
                          Radius.circular(180)
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: width*0.025,
                        ),
                        Column(
                          children: [
                            Text("378", style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                               ),),
                            Text("Posts"),
                          ],
                        ),
                        SizedBox(
                          width: width*0.025,
                        ),
                        Column(
                          children: [
                            Text("3.5K", style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                               ),),
                            Text("Follower"),
                          ],
                        ),
                        SizedBox(
                          width: width*0.025,
                        ),
                        Column(
                          children: [
                            Text("100", style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                               ),),
                            Text("Flowing"),
                          ],
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                              ),
                            ),
                           child: Padding(
                             padding: const EdgeInsets.only(
                               top: 4, left: 24, right: 24, bottom: 4
                             ),
                             child: Text("Message"),
                           ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                              ),
                            ),
                           child: Padding(
                             padding: const EdgeInsets.only(
                               top: 4, left: 4, right: 4, bottom: 4
                             ),
                             child: Icon(Icons.account_circle, size: 16),
                           ),
                          ),
                          ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    btntext1="Button Pressed";
                  });
                }, 
                child: Text(btntext1)
            )
            ],

        ),
      ),

    );
  }
}
