import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/forgot_password.dart';
import 'package:login/sign_up.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.deepPurple;
      }
      return Colors.deepPurple;
    }

    return Scaffold(
      body: Container(

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 90),
              alignment: Alignment.topLeft,
              child: Text("Sign In", style: TextStyle(fontSize: 35, color: Colors.deepPurpleAccent),),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 115, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "username",
                  prefixIcon: new Icon(Icons.alternate_email, color: Colors.deepPurple,),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20, right: 30),
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "password", fillColor: Colors.deepPurple,
                    prefixIcon: new Icon(Icons.vpn_key, color: Colors.deepPurple,),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                    height: 80,
                    child: Checkbox(
                      shape: CircleBorder(),
                      checkColor: Colors.white,
                      value: isChecked,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Text("Remember Me", style: TextStyle(color: Colors.deepPurple, fontSize: 15),),
                  ),
                  const SizedBox(width: 90),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()),);
                    },
                    child: Text("forgot password ?", style: TextStyle(color: Colors.deepPurple, fontSize: 15),),
                  ),
                ],
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
                      child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20),),
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



            // Container(
            //   padding: EdgeInsets.only(top: 15, right: 230),
            //     child: FlatButton(
            //
            //       onPressed: () {
            //         // Add your onPressed code here!
            //       },
            //       child: Row(
            //         children: [
            //           SizedBox(
            //             width: 50,
            //             height: 20,
            //             child: Checkbox(
            //               shape: CircleBorder(),
            //               checkColor: Colors.white,
            //               value: true,
            //               onChanged: (bool? value) {
            //                 setState(() {
            //
            //                 });
            //               },
            //             ),
            //           ),
            //           Text("Remember Me", style: TextStyle(color: Colors.deepPurple, fontSize: 15),),
            //         ],
            //       )
            //     ),
            // )

            // SizedBox(
            //   width: 20,
            //   ),
            // CheckboxListTile(
            //   contentPadding: EdgeInsets.only(left: 13,top: 10),
            //   title: Text("Remember Me", style: TextStyle(color: Colors.deepPurple, fontSize: 15),),
            //   controlAffinity: ListTileControlAffinity.leading,
            //   value: true,
            //   onChanged: (bool? value) {
            //     setState(() {
            //       // isChecked = value!;
            //     });
            //   },
            //   activeColor: Colors.deepPurple,
            // )
          ]
        )

      ),
    );
  }

}
