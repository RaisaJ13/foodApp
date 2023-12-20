import 'package:flutter/cupertino.dart';

class TopPart extends StatelessWidget{
  const TopPart({Key ? key}) : super(key : key);

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Column(
            children: [
              Text(
                  "Checkers",
              style: TextStyle(
                fontSize:  20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
                "Food.Specialty.Review",
                style: TextStyle(
                  fontSize:  20,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
        ),
      ],
    );
  }
}
