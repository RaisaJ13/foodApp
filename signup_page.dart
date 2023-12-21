import 'package:flutter/material.dart';
import 'package:food_app/secondPages/end_part.dart';
import 'my_button.dart';

class signup extends StatefulWidget{
  const signup({Key?key}) : super(key : key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool visibility = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Sign up", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
              Column(
                children: [
                  TextFormField(
                    decoration:  InputDecoration(
                      hintText: "Full name :",
                    ),
                  ),
                  TextFormField(
                    decoration:  InputDecoration(
                      hintText: "Email :",
                    ),
                  ),
                  TextFormField(
                    obscureText: visibility,
                    decoration:  InputDecoration(
                      hintText: "Password :",
                      suffixIcon:  IconButton(
                        onPressed: (){
                          setState(() {
                            visibility =! visibility;
                          });
                        },
                        icon: Icon(
                            visibility ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
               children: [
                 mybutton(
                   onPressed: (){},
                   text: " Sign Up",
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Already have ann account?\t"),
                     Text("Log in"),
                   ],
                 ),

               ],
              ),
              Column(
                children : [
                  BackButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>const EndPart()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
