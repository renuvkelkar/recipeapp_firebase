import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
class Banner extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VxSwiper.builder(
        itemCount: 10,
        height: 400,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        isFastScrollingEnabled: false,
       // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return "Item $index".text.white.make()
              .box.rounded.alignCenter.color(Vx.randomOpaqueColor).make()
              .p4();
        },
      ),
    );
  }
}
