import 'package:flutter/material.dart';
import 'package:untitled1/page/profile_page.dart';

import 'myDrawerr.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Go back
          },
        ),
        
        backgroundColor: Colors.black,

      ),

      endDrawer: MyDrawer(),
     // body: ,
    );
  }
}
