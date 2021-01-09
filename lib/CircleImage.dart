import 'package:flutter/material.dart';
class CircleImage extends StatelessWidget {
   String img;
  CircleImage({this.img});
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 55,
      height: 55,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
            child: Image.asset(img,width: 45,fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(100)


        ),
      ),
    );
  }
}
