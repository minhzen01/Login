import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _validateEmail = false;
  bool _validateUser = false;
  bool _validatePass = false;
  bool _validatePass2 = false;
  String? _pass;
  bool _passwordVisible = true;
  bool _passwordVisible1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      errorText: _validateUser ? 'Invalid Username' : null,
                    ),
                    onChanged: (text) {
                      setState(() {
                        RegExp('^(?=.*?[!@#\$&*~])').hasMatch(text) ? _validateUser = true : _validateUser = false;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email address", fillColor: Colors.deepPurple,
                        prefixIcon: new Icon(Icons.email_outlined, color: Colors.deepPurple,),
                        errorText: _validateEmail ? 'Invalid Email' : null,
                      ),
                      onChanged: (text) {
                        setState(() {
                          !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z.-]").hasMatch(text) ? _validateEmail = true : _validateEmail = false;
                        });
                      },

                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: SizedBox(
                    child: TextField(
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: new Icon(Icons.vpn_key, color: Colors.deepPurple,),
                        errorText: _validatePass ? 'Invalid Password' : null,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },

                          )
                      ),
                      onChanged: (text) {
                        setState(() {
                          RegExp('^(?=.*?[!@#\$&*~])').hasMatch(text) ? _validatePass = true : _validatePass = false;
                        });
                        _pass = text;
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: SizedBox(
                    child: TextField(
                      obscureText: _passwordVisible1,
                      decoration: InputDecoration(
                        hintText: "Re-enter your password",
                        prefixIcon: new Icon(Icons.vpn_key, color: Colors.deepPurple,),
                        errorText: _validatePass2 ? 'Not Match' : null,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible1 ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                              color: Colors.deepPurple,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible1 = !_passwordVisible1;
                              });
                            },

                          )
                      ),
                      onChanged: (text) {
                        setState(() {
                          (_pass != text) ? _validatePass2 = true : _validatePass2 = false;
                        });
                      },
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
