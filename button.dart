import 'package:flutter/material.dart';

import 'MenuPage.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuPage()), // push to menu page
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.white),
        ),
      ),
      child: Container(
        width: 200,
        height: 80,
        alignment: Alignment.center,
        child: const Text('Submit', style: TextStyle(fontSize: 20)), //Submit button

      ),
    );
  }
}
