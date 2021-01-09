import 'package:flutter/material.dart';
class CircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      child: Image.asset("assets/ikka.jpg",width: 45,),
      borderRadius: BorderRadius.circular(100)

    );
  }
}
