import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  String img;
  bool displaystatus;
  bool displayborder;
  CircleImage({@required this.img,@required this.displaystatus,this.displayborder = false});
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
           border: Border.all(
               color: Colors.greenAccent,
               width: 1
           ),
       ),
     ),
   );}
 else{Statusindicator = SizedBox();}

    return Stack(
      children: [
        Container(

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayborder ? Border.all(color: Colors.blue,width: 3) : Border(),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 4,right: 4),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  img,
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),

            ),

          ),
        ),
        Statusindicator,
      ],
    );



  }
}
