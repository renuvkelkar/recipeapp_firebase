import 'package:flutter/material.dart';
import 'package:recipeappfirebase/widgets/Home/Navigation.dart';
import "package:velocity_x/velocity_x.dart";

import 'menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: context.isMobile
            ? AppBar(
                backgroundColor: Colors.red,
              )
            : null,
        drawer: context.isMobile
            ? Drawer(
                child: Menu(),
              )
            : null,
        body: Column(
          children: [
            VxDevice(mobile: Container(), web: NavigatorWidget()),
            Container(
              color: Colors.green,
              child: VxSwiper.builder(
                itemCount: 10,
                height: context.isMobile ? 400 : 200,

                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                isFastScrollingEnabled: false,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                    child: Image.network(
                      "https://image.freepik.com/free-vector/hand-drawn-recipes-youtube-thumbnail_23-2148906351.jpg",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            // Image.network("https://image.freepik.com/free-vector/hand-drawn-recipes-youtube-thumbnail_23-2148906351.jpg")
          ],
        ));
  }
}
