import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  bool _myBool = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 100),
              alignment: Alignment.topLeft,
              child: Text("Sign In", style: TextStyle(fontSize: 40, color: Colors.deepPurpleAccent),),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 100, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "username",
                  icon: new Icon(Icons.alternate_email, color: Colors.deepPurple,),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20, right: 30),
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "password", fillColor: Colors.deepPurple,
                    icon: new Icon(Icons.vpn_key, color: Colors.deepPurple,),
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
                      value: false,
                      onChanged: (bool? value) {
                          setState(() {

                          });
                        },
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: Text("Remember Me", style: TextStyle(color: Colors.deepPurple, fontSize: 15),),
                  ),
                  const SizedBox(width: 90),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: Text("forgot password ?", style: TextStyle(color: Colors.deepPurple, fontSize: 15),),
                  ),
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
