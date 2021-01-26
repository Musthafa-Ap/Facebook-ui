import 'package:facebook/CircleImage.dart';
import 'package:flutter/material.dart';

import 'AppBarMenu.dart';
class Storycard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String profile;
  final bool createstorystatus;
  final bool displayborder;
  Storycard({@required this.labeltext, @required this.story,@required this.profile , this.createstorystatus = false,this.displayborder=false});
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
      width: 110,
      height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          )
      ),
      child: Stack(
        children: [
          Positioned(

            child: createstorystatus ? Menu(icon: Icons.add,action: (){print("add story");},Iconcolor: Colors.blue,)
                : CircleImage(img: profile,displaystatus: false,displayborder: displayborder,width: 40,height: 40,)
          ),
          Positioned(
            bottom: 10,
            left: 13,
            child: Text(labeltext != null ? labeltext : "N/A" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
