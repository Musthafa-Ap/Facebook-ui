import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  String img;
  bool displaystatus;
  CircleImage({this.img,this.displaystatus});
  @override
  Widget build(BuildContext context) {
    Widget Statusindicator;

 if(displaystatus== true){
   Statusindicator=Positioned(
     bottom: 6,
     right: 6,
     child: Container(
       width: 12,
       height: 12,
       decoration: BoxDecoration(
           color: Colors.green,
           shape: BoxShape.circle,
           border:Border.all(
               color: Colors.greenAccent,
               width: 1
           )
       ),
     ),
   );}
 else{Statusindicator = SizedBox();}

    return Stack(
      children: [
        Container(
          width: 55,
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
                child: Image.asset(
                  img,
                  width: 45,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
        Statusindicator,
      ],
    );



  }
}
