import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final IconData icon;
  final void Function() action;
  Menu({@required this.icon,@required this.action});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle
      ),
      child: IconButton(
        icon: Icon(icon,color: Colors.black,),
        onPressed: action,
      ),
    );
  }
}
