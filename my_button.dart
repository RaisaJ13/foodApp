import 'package:flutter/material.dart';

class mybutton extends StatefulWidget{
  final void Function()? onPressed ;
  final String text;
  mybutton({
    required this.onPressed,
    required this.text,
});

  @override
  _mybuttonState createState() => _mybuttonState();
}

class _mybuttonState extends State<mybutton> {
  @override
  Widget build(BuildContext context){

    //var onPressed;
    return  MaterialButton(
      onPressed:widget.onPressed,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(04),

      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlue,

            ],
            begin : Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(04),

        ),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: Text(
             widget.text
          ),
        ),
      ),
    );
  }
}
