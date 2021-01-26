import 'package:flutter/material.dart';

import 'CircleImage.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.all(5),
            child: OutlineButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text(
                "Create \nRoom",
                style: TextStyle(color: Colors.indigo, fontSize: 15),
              ),
              shape: StadiumBorder(),
              borderSide: BorderSide(color: Colors.blue[300]),
            ),
          ),
          CircleImage(img: "assets/ikka.jpg",displaystatus: true,),
         CircleImage(img: "assets/Akhil.jpg",displaystatus: true,),
         CircleImage(img: "assets/Amal.jpg",displaystatus: true,),
          CircleImage(img: "assets/Shibin.jpg",displaystatus: true,),
          CircleImage(img: "assets/Musthafa.jpg",displaystatus: true,),
          CircleImage(img: "assets/Nabeel.jpg",displaystatus: true,),
          CircleImage(img: "assets/ettan.jpg",displaystatus: true,),
        ],
      ),
    );
  }
}
