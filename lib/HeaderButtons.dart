import 'package:flutter/material.dart';
class HeaderButtons extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final Color color1;
  final Color color2;
  final Color color3;
  final String text1;
  final String text2;
  final String text3;
  HeaderButtons({@required this.color1,@required this.color2,@required this.color3,@required this.icon1,@required this.icon2
  ,@required this.icon3,@required this.text1,@required this.text2,@required this.text3});
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton.icon(onPressed:(){}, icon:Icon(icon1,color: color1), label: Text(text1)),
          VerticalDivider(thickness: .5,color: Colors.grey,),
          FlatButton.icon(onPressed:(){}, icon: Icon(icon2,color: color2), label: Text(text2)),
          VerticalDivider(thickness: .5,color: Colors.grey,),
          FlatButton.icon(onPressed:(){}, icon: Icon(icon3,color:color3), label: Text(text3)),
        ],
      ),
    );
  }
}
