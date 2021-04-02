import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(context) => Container(
    color: Colors.red,
    child: ListView(
        children: [
          Container(

            child: Column(
              children: [
                MaterialButton(

                    onPressed: () {},
                    child: ListTile(

                      title: Text("Home",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(

                      title: Text("For Her",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(

                      title: Text("For Him",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(

                      title: Text("About Us",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(
                      title: Text("Contact Us",style: TextStyle(color: Colors.white),),
                    )
                ),
              ],
            ),
          ),

        ]
    ),
  );
}