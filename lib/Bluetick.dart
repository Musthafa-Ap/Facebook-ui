import 'package:flutter/material.dart';
class Bluetick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.check,color: Colors.white,size: 10,),
    );
  }
}
