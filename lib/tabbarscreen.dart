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
        length: 6,
        child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "MusicApp",
                  style: TextStyle(fontSize: 30),
                ),

                centerTitle: false,
                bottom: TabBar(
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,

                  tabs: [
                    Tab(
                      text: "For You",
                    ),
                    Tab(
                      text: "Songs",
                    ),
                    Tab(
                      text: "Playlists",
                    ),
                    Tab(
                      text: "Folders",
                    ),
                    Tab(
                      text: "Albums",
                    ),
                    Tab(
                      text: "Artists",
                    ),

                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  homescreen(),
                  homescreen(),
                  homescreen(),
                  homescreen(),
                  homescreen(),
                  homescreen(),
                ],
              ),
            )
        )
    );
  }
}