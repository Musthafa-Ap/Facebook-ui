import 'package:facebook/StoryCards.dart';
import 'package:flutter/material.dart';
import 'AppBarMenu.dart';

class Mainstorysection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Storycard(labeltext:"Add to Story",profile: "assets/ettan.jpg",story: "assets/ettan.jpg",createstorystatus: true,displayborder: true,),
            Storycard(labeltext:"Mamootty",profile: "assets/ikka.jpg",story: "assets/a.jpg",displayborder: true,),
            Storycard(labeltext:"Amal",profile: "assets/b.jpg",story: "assets/c.jpg",displayborder: true,),
            Storycard(labeltext:"Nabeel",profile: "assets/c.jpg",story: "assets/b.jpg",displayborder: true,),
            Storycard(labeltext:"Shibin",profile: "assets/d.jpg",story: "assets/e.jpg",displayborder: true,),


          ],
        ),
      ),
    );
  }
}
