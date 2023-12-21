import 'package:flutter/material.dart';
import 'package:food_app/secondPages/end_part.dart';

class firstpage extends StatefulWidget{
  const firstpage({Key?key}) : super(key : key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

  /*startTimer()
  {
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c)=>const EndPart()));
    });
  }*/
  @override
  Widget build(BuildContext context)
  {


    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            EndPart(),
          ],
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}