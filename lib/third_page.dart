import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
//global variable
final _formKey=GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool passVisi=true;
//global variable

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Third Page"),
        ),

        body: Form(
          key: _formKey,
          child: Padding(
            padding:  EdgeInsets.only(
                top: h*0.08, left: w*0.04,
                right: w*0.04, bottom: h*0.08),
            child: Column(
              children: [
                Text("Log in", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(color: Colors.blue),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: Icon(Icons.attach_email, color: Colors.blue,),

                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  obscureText: passVisi,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: Colors.blue),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon:
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(passVisi== true)
                          passVisi=false;
                          else
                            passVisi=true;
                        });
                      },
                        child: Icon(Icons.remove_red_eye, color: Colors.blue)),

                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                    onPressed: (){
                      setState(() {

                      });
                      },
                    child: Text("Log in")),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
