import 'package:audioplayer/firstVideoscreen.dart';
import 'package:audioplayer/topscreen.dart';
import 'package:flutter/material.dart';
class TabBarview_Screen extends StatefulWidget {
  const TabBarview_Screen({Key? key}) : super(key: key);

  @override
  State<TabBarview_Screen> createState() => _TabBarview_ScreenState();
}

class _TabBarview_ScreenState extends State<TabBarview_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "PlayBack",
                  style: TextStyle(fontSize: 30),
                ),
                centerTitle: true,
                bottom: TabBar(
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,

                  tabs: [
                    Tab(
                      text: "Video",
                    ),
                    Tab(
                      text: "Audio",
                    ),


                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  First_Screen(),
                  homescreen(),
                ],
              ),
            )
        )
    );
  }
}