import 'package:facebook/Bluetick.dart';
import 'package:facebook/CircleImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Postcard extends StatelessWidget {
  final String dp;
  final String name;
  final String hour;
  final bool verified;
  final String posttitle;
  final String postimage;
  Postcard({@required this.dp,@required this.name,@required this.hour,@required this.verified = true,@required this.postimage,@required this.posttitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postcardheader(),
          titlesection(),
         imagesection(),
          footersection(),

        ],
      ),
    );
  }

  Widget footersection(){
    return  Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.thumb_up,color: Colors.white,size: 12,),
              ),
              displaytext(label: "10K")
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Row(
              children: [
                displaytext(label: "1K"),
                SizedBox(width: 5,),
                displaytext(label: "Comments"),
                SizedBox(width: 5,),
                displaytext(label: "500 Shares")
              ],
            ),
          )
        ],
      ),
    );
  }
Widget displaytext({@required String label}){
    return Text(
label,style: TextStyle(color: Colors.grey[700]),
    );
}



  Widget imagesection(){
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5 ),
      child: Image.asset(postimage)
    );
  }




 Widget titlesection(){
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(posttitle == null ? "" : posttitle,style: TextStyle(color: Colors.black,fontSize: 20),),
    );
 }




  Widget postcardheader(){
    return  ListTile(
        leading: CircleImage(img: dp,displaystatus: false,),
        title: Row(
          children: [
            Text(name),
            SizedBox(width: 5),
            verified ? Bluetick() : SizedBox(),
          ],
        ),
        subtitle: (
            Row(
              children: [
                Text(hour == null ? "" : hour),
                SizedBox(width: 5),
                Icon(
                  Icons.public,size: 15,color: Colors.grey[700],
                )
              ],
            )
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
          onPressed: (){
            print("more button is pressed");
          },
        )

    );
  }
}
