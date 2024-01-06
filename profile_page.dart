import 'package:flutter/material.dart';
import 'package:untitled1/page/MenuPage.dart';
import 'package:untitled1/page/button.dart';
import 'package:untitled1/page/edit_profile.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => const MenuPage(), // back button to back in menu page
              ),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellow,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          // Right side edit button
          Padding(
            padding: const EdgeInsets.only(top: 15), // edit button
            child: TextButton(
              onPressed: () {
                // Add your edit logic here
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 120,
              height: 120,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              child: const Center(
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'My Details',
              style: TextStyle(color: Colors.yellowAccent),
            ),
          ),
          const MyTextBox(firstName: ' ', lastName: ' ', address: ' '),
          const SubmitButton(),
        ],
      ),
    );
  }
}
