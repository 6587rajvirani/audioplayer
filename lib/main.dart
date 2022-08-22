import 'package:audioplayer/firstprovider.dart';
import 'package:audioplayer/firstscreen.dart';
import 'package:audioplayer/tabbarscreen.dart';
import 'package:audioplayer/topProvider.dart';
import 'package:audioplayer/topscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<top_Provider>(create: (context) =>top_Provider(),),
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'home':(context)=>homescreen(),
          '/':(context)=>TabBarview_Screen(),
          'firat':(context)=>first_Screen(),
        },
      )
    ),
  );
}
