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
              HeaderButtons(icon1: Icons.video_call,icon2: Icons.photo_library,icon3: Icons.video_call,
                color1: Colors.red,color2: Colors.green,color3: Colors.purple,text1: 'Live',text2: 'Photos',text3: 'Room',),
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
              Postcard(name: "Amal ",dp: ("assets/Amal.jpg"),hour: ("1h"),postimage: ("assets/Amal3.jpg"),like: "132",share: "12",comment: "25",verified: false,),
              Postcard(name: "Nabeel",dp: ("assets/Nabeel.jpg"),hour: ("6h"),postimage: ("assets/Nabeel3.jpg"),like: "232",share: "12",comment: "13",verified: false,),
              Postcard(name: "Mohanlal",dp: ("assets/ettan.jpg"),hour: ("1h"),postimage: ("assets/ettan2.jpg"),like: "8K",share: "1.5K",comment: "3K",),
              Postcard(name: "Shibin",dp: ("assets/Shibin.jpg"),hour: ("4h"),postimage: ("assets/Shibin3.jpg"),like: "132",share: "12",comment: "23",verified: false,),
              Postcard(name: "therealprithvi",dp: ("assets/Prithviraj.jpg"),hour: ("just now"),postimage: ("assets/Prithviraj2.jpg"),like: "5K",share: "124",comment: "250",),
              Postcard(name: "Akhilesh",dp: ("assets/Akhil.jpg"),hour: ("just now"),postimage: ("assets/Akhil3.jpg"),like: "102",share: "12",comment: "25",verified: false,),
            ],
          ),
        ),
      ),
    );
  }
}
