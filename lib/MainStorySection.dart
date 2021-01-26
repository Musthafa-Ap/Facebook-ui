import 'package:facebook/StoryCards.dart';
import 'package:flutter/material.dart';
import 'AppBarMenu.dart';

class Mainstorysection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Storycard(labeltext:"Add to Story",profile: "assets/Musthafa.jpg",story: "assets/Musthafa.jpg",createstorystatus: true,displayborder: true,),
            Storycard(labeltext:"Amal",profile: "assets/Amal.jpg",story: "assets/Amal2.jpg",displayborder: true,),
            Storycard(labeltext:"Akhilesh",profile: "assets/Akhil.jpg",story: "assets/Akhil2.jpg",displayborder: true,),
            Storycard(labeltext:"Nabeel",profile: "assets/Nabeel.jpg",story: "assets/Nabeel2.jpg",displayborder: true,),
            Storycard(labeltext:"Shibin",profile: "assets/Shibin.jpg",story: "assets/Shibin2.jpg",displayborder: true,),


          ],
        ),
      ),
    );
  }
}
