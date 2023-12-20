import 'dart:async';


import 'package:flutter/material.dart';
import 'package:food_app/center_part.dart';
import 'package:food_app/signup_page.dart';
import 'package:food_app/top_part.dart';



class WelcomePages extends StatefulWidget{
  const WelcomePages({Key?key}) : super(key : key);

  @override
  State<WelcomePages> createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {

  startTimer()
  {
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c)=>const signup()));
    });
  }
  @override
  Widget build(BuildContext context)
  {


    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopPart(),

            Centerpart(),

            //EndPart(),
          ],
        ),
      ),

    );
  }
}