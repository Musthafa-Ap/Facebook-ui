import 'package:flutter/material.dart';

import 'CircleImage.dart';
class Searchingfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleImage(img: "assets/Musthafa.jpg",displaystatus: false,),
      title: TextField(
        decoration: InputDecoration(
            hintText: "Whats on your mind?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),

      ),
    );
  }
}
