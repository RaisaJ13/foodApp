import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String address;

  const MyTextBox({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //will check boxes are empty
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          TextFieldWidget(
            label: 'FirstName',
            icon: Icons.person_2_outlined,
            value: firstName,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
          ),
          TextFieldWidget(
            label: 'LastName',
            icon: Icons.person_2_outlined,
            value: lastName,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
          ),
          TextFieldWidget(
            label: 'Address',
            icon: Icons.person_2_outlined,
            value: address,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your address';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;
  final String? Function(String?)? validator; // Add validator property

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.icon,
    required this.value,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text with icon
        TextFormField(
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: Icon(icon),
          ),
          controller: TextEditingController(text: value),
          validator: validator, // Assign validator
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
