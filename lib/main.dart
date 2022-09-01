import 'package:audioplayer/audio/firstscreen.dart';
import 'package:audioplayer/sharedprefrence/introscreen.dart';
import 'package:audioplayer/sharedprefrence/login_page.dart';
import 'package:audioplayer/sharedprefrence/new_accountpage.dart';
import 'package:audioplayer/video/imageprovider.dart';
import 'package:audioplayer/video/sceondVideoscreen.dart';
import 'package:audioplayer/spleshScreen.dart';
import 'package:audioplayer/tabbarscreen.dart';
import 'package:audioplayer/audio/topProvider.dart';
import 'package:audioplayer/audio/topscreen.dart';
import 'package:audioplayer/video/videoProviderScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'video/firstVideoscreen.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<top_Provider>(create: (context) =>top_Provider(),),
        ListenableProvider<main_provider>(create: (context) =>main_provider(),),
        ListenableProvider<Image_Provider>(create: (context) =>Image_Provider(),),
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'new',
        routes: {
          '/':(context)=>splesh_Screen(),
          'new':(context)=>NewAcount_Screen(),
          'log':(context)=>Login_Screen(),
          'home':(context)=>homescreen(),
          'tab':(context)=>TabBarview_Screen(),
          'firat':(context)=>first_Screen(),
          'fir':(context)=>First_Screen(),
          'sec':(context)=>Second_Screen(),
          'intro':(context)=>intro_Screen(),

        },
      )
    ),
  );
}

