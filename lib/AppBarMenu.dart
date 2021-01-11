import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final IconData icon;
  final void Function() action;
  final Color Iconcolor;
  Menu({@required this.icon,@required this.action,this.Iconcolor = Colors.black });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 41,
      height: 41,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle
      ),
      child: IconButton(
        icon: Icon(icon,color:Iconcolor),
        onPressed: action,
      ),
    );
  }
}
