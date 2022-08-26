import 'package:audioplayer/firstscreen.dart';
import 'package:audioplayer/sceondVideoscreen.dart';
import 'package:audioplayer/tabbarscreen.dart';
import 'package:audioplayer/topProvider.dart';
import 'package:audioplayer/topscreen.dart';
import 'package:audioplayer/videoProviderScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firstVideoscreen.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<top_Provider>(create: (context) =>top_Provider(),),
        ListenableProvider<main_provider>(create: (context) =>main_provider(),),
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'home':(context)=>homescreen(),
          '/':(context)=>TabBarview_Screen(),
          'firat':(context)=>first_Screen(),
          'fir':(context)=>First_Screen(),
          'sec':(context)=>Second_Screen(),
        },
      )
    ),
  );
}

