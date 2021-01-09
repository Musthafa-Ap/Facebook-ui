import 'package:facebook/AppBarMenu.dart';
import 'package:facebook/SearchingField.dart';
import 'package:flutter/material.dart';
import 'CircleImage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(color: Colors.indigo, fontSize: 35),
          ),
          actions: [
            Menu(
              icon: Icons.search,
              action: () {
                print("Hello icon is pressed");
              },
            ),
            Menu(
              icon: Icons.chat,
              action: () {
                print("Chat icon is pressed");
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Searchingfield(),
            Divider(
              thickness: .5,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
