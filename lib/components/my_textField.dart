import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child:  SizedBox(
        width: 350.0, 
        height: 40,
        child:  TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0)),
                focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0)),
            fillColor: Color.fromARGB(255, 233, 224, 224),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[600])
          ),
        ),
      ),
    );
  }
}
