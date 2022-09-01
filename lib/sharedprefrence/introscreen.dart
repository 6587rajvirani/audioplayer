import 'package:audioplayer/sharedprefrence/shared_preferencespage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class intro_Screen extends StatefulWidget {
  const intro_Screen({Key? key}) : super(key: key);

  @override
  State<intro_Screen> createState() => _intro_ScreenState();
}

class _intro_ScreenState extends State<intro_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: IntroductionScreen(
              done: Text("START",style: TextStyle(color: Colors.green),),
              showDoneButton: true,
              onDone: (){
                setIntro();
                Navigator.pushReplacementNamed(context, 'tab');
              },
              next: Icon(Icons.arrow_forward,size: 20,color: Colors.green,),

              showNextButton: true,

              showSkipButton: true,
              skip: Text("SKIP",style: TextStyle(color: Colors.black),),

              pages: [
                PageViewModel(
                  title: "",
                  body: "    Search How-To's,Help videos,and \n    Solutions to quickly troybleshoot and enhance  performance." ,
                  image: Image.asset("assets/image/intro1.jpg"),
                ),
                PageViewModel(
                  title: "",
                  body: "     View and update warranty status, \n       and local serive providers, and check  repair  status.",
                  image: Image.asset("assets/image/intro2.jpg"),
                ),
                PageViewModel(
                  title: "",
                  body: "  Chech  out our Deals on Lonovo Products \n    in the 'shop' section",
                  image: Image.asset("assets/image/intro3.jpg"),
                ),
                PageViewModel(
                  title: "",
                  body: "Top Page your  Lonovo  products and \n how to optimize by accessing \n product Manuals. ",
                  image: Image.asset("assets/image/intro4.jpeg"),
                ),
              ],
            ),
      )
    );
  }
}
