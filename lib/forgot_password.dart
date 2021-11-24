import 'package:flutter/material.dart';
import 'package:login/sign_up.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 90),
                  alignment: Alignment.topLeft,
                  child: Text("Forgot Password", style: TextStyle(fontSize: 35, color: Colors.deepPurpleAccent),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 170, right: 30),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email address", fillColor: Colors.deepPurple,
                        prefixIcon: new Icon(Icons.email_outlined, color: Colors.deepPurple,),
                        errorText: _validate ? 'Invalid Email' : null,
                      ),
                      onChanged: (text) {
                        setState(() {
                          !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z.-]").hasMatch(text) ? _validate = true : _validate = false;
                          // validateEmail(text) ? _validate = true : _validate = false;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Container(
                        width: 325,
                        height: 50,
                        child: TextButton(
                          child: Text("Send", style: TextStyle(color: Colors.white, fontSize: 20),),
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
                        padding: EdgeInsets.only(top: 140),
                        child: Text("Don't have an account ?", style: TextStyle(color: Colors.deepPurple, fontSize: 14),),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 150, top: 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()),);
                                },
                                child: Text("Sign Up", style: TextStyle(color: Colors.deepPurple, fontSize: 14),),
                              ),
                            ),
                            Container(
                              child: Text("here", style: TextStyle(color: Colors.deepPurple, fontSize: 14),),
                            )
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
