import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class NavigatorWidget extends StatefulWidget {
  @override
  _NavigatorWidgetState createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight*0.1,
      color: Colors.red,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 8,
          itemBuilder: (context,index){
          return VxBox(
            child: "Category".text.white.makeCentered(),
          ).height(context.screenHeight*0.15).width(context.screenWidth*0.15).roundedLg.make().p4();
          })
    );
  }
}
