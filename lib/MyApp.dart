import 'package:facebook/AppBarMenu.dart';
import 'package:facebook/HeaderButtons.dart';
import 'package:facebook/MainStorySection.dart';
import 'package:facebook/PostCards.dart';
import 'package:facebook/SearchingField.dart';
import 'package:facebook/StatusSection.dart';
import 'package:flutter/cupertino.dart';
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Searchingfield(),
              Divider(
                thickness: .5,
                color: Colors.black,
              ),
              HeaderButtons(),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              StatusSection(),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              Mainstorysection(),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              Postcard(name: "Mammootty",dp: ("assets/ikka.jpg"),hour: ("5h"),postimage: ("assets/ikka2.jpg"),posttitle: "Happy Diwali!!!",like: "10K",share: "2K",comment: "1K",),
            ],
          ),
        ),
      ),
    );
  }
}
