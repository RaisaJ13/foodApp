
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/my_button.dart';


class EndPart extends StatelessWidget{
  const EndPart({Key?key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        mybutton(
          onPressed: (){},
          text: " Log In",
        ),
        SizedBox(height: 20,),
        Text("Sig up"),
      ],
    );
  }

}