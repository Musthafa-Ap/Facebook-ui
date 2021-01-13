import 'package:facebook/Bluetick.dart';
import 'package:facebook/CircleImage.dart';
import 'package:flutter/material.dart';
class Postcard extends StatelessWidget {
  final String img;
  final String name;
  final String hour;
  Postcard({@required this.img,@required this.name,@required this.hour});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleImage(img: img,displaystatus: false,),
            title: Row(
              children: [
                Text(name),
                SizedBox(width: 5),
                Bluetick()
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

          )
        ],
      ),
    );
  }
}
