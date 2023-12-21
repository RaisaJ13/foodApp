
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/logIn/log_in.dart';
import 'package:food_app/my_button.dart';
import 'package:food_app/signup_page.dart';


class EndPart extends StatefulWidget{
  const EndPart({Key?key}) : super(key : key);

  @override
  State<EndPart> createState() => _EndPartState();
}

class _EndPartState extends State<EndPart> {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mybutton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>const signup()));
                },
                text: " Sign up",

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mybutton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>const login()));
                },
                text: "Log In",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
