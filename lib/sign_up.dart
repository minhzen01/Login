import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 90),
                  alignment: Alignment.topLeft,
                  child: Text("Sign Up", style: TextStyle(fontSize: 35, color: Colors.deepPurpleAccent),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 90, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Pick your username",
                      prefixIcon: new Icon(Icons.alternate_email, color: Colors.deepPurple,),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email address", fillColor: Colors.deepPurple,
                        prefixIcon: new Icon(Icons.email_outlined, color: Colors.deepPurple,),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your password", fillColor: Colors.deepPurple,
                        prefixIcon: new Icon(Icons.vpn_key, color: Colors.deepPurple,),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Re-enter your password", fillColor: Colors.deepPurple,
                        prefixIcon: new Icon(Icons.vpn_key, color: Colors.deepPurple,),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Container(
                        width: 325,
                        height: 50,
                        child: TextButton(
                          child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20),),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.deepPurple)
                                  )
                              )
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Already have an account !!!", style: TextStyle(color: Colors.deepPurple, fontSize: 14),),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 175, top: 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen()),);
                                },
                                child: Text("Sign In", style: TextStyle(color: Colors.deepPurple, fontSize: 14),),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}
