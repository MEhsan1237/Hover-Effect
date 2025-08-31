import 'package:flutter/material.dart';
import 'package:hovereffect2/product/screen/hoverscreen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection:  Axis.horizontal,
        child: Column(
          children: [
             Row(
               children: [
                 HoverEffectScreen(
                   title: 'My Container',
                   imagePath: "assets/images/book.one.png",
                   icon: Icons.person,
                   description: "This Container is for the profile \ncontainer of mine",
                 ),
                 HoverEffectScreen(
                   title: 'Your Container',
                   imagePath: "assets/images/dp.one.png",
                   icon: Icons.man,
                   description: "This Container is for the profile \ncontainer of your",
                 ),
                 HoverEffectScreen(
                   title: 'our Container',
                   imagePath: "assets/images/river.one.png",
                   icon: Icons.elderly_woman,
                   description: "This Container is for the profile \ncontainer of our",
                 ),
               ],

             )
            ,
             SizedBox(
               height: 20,
             ),
            Row(
              children: [
                HoverEffectScreen(
                  title: 'My Study Container',
                  imagePath: "assets/images/sun.one.png",
                  icon: Icons.book,
                  description: "This Container is for the \nstudy container",
                ),
                HoverEffectScreen(
                  title: 'My Qualification Container',
                  imagePath: "assets/images/tennis.one.png",
                  icon: Icons.shopping_bag,
                  description: "This Container is for the \nqualification container",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
