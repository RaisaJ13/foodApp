import 'package:flutter/material.dart';
import 'package:food_app/my_button.dart';
import 'package:food_app/secondPages/end_part.dart';


class login extends StatefulWidget{
  const login({Key?key}) : super(key : key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
              Text("Log in", style: TextStyle(
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
                    text: " Log In",
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