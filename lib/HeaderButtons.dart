import 'package:flutter/material.dart';
class HeaderButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton.icon(onPressed:(){}, icon: Icon(Icons.video_call,color: Colors.red,), label: Text("Live")),
          VerticalDivider(thickness: .5,color: Colors.grey,),
          FlatButton.icon(onPressed:(){}, icon: Icon(Icons.photo_library,color: Colors.green,), label: Text("Photos")),
          VerticalDivider(thickness: .5,color: Colors.grey,),
          FlatButton.icon(onPressed:(){}, icon: Icon(Icons.video_call,color: Colors.purple), label: Text("Room")),
        ],
      ),
    );
  }
}
