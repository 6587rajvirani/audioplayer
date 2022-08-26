
import 'package:audioplayer/videoProviderScreen.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';



class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  var mainproviderfalse;
  var mainproviderTrue;
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
        "${Provider.of<main_provider>(context, listen: false).Datapickkk?.Video}");
    chewieController = ChewieController(videoPlayerController: videoPlayerController!);
  }

  @override
  Widget build(BuildContext context) {
    mainproviderfalse = Provider.of<main_provider>(context, listen: false);
    mainproviderTrue = Provider.of<main_provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    color: Colors.black,
                    alignment: Alignment.center,
                    height: 250,
                    child: InkWell(
                      onTap: () {
                        mainproviderfalse.playPause();
                        if (mainproviderfalse.isPlay == false) {
                          videoPlayerController!.play();
                        } else {
                          videoPlayerController!.pause();
                        }
                      },
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 0.6,
                width: double.infinity,
                color: Colors.white,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 350,
                      margin: const EdgeInsets.all(15),
                      child: Text(
                        "${mainproviderfalse.Datapickkk?.Sub2}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(margin: const EdgeInsets.only(bottom: 25),child: const Icon(Icons.keyboard_arrow_down_outlined,size: 30,color: Colors.white,)),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(margin: const EdgeInsets.only(left: 15,right: 15),child: Text("${mainproviderfalse.Datapickkk?.Date}",style: const TextStyle(color: Colors.white60,fontSize: 13),)),
                  Container(child: Text("#Lamborghiniave..",style: TextStyle(color: Colors.blue.shade700,fontSize: 13,fontWeight: FontWeight.w800),)),

                ],
              ),
              Row(
                children: [
                  Container(margin: const EdgeInsets.only(right: 15,left: 15,bottom: 8),child: Text("#Developer  #Flutter",style: TextStyle(color: Colors.blue.shade700,fontSize: 13,fontWeight: FontWeight.w800))),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.thumb_up_outlined,color: Colors.white,),
                        Text("${mainproviderfalse.Datapickkk?.Like}",style: TextStyle(fontSize: 13,color: Colors.white),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.thumb_down_off_alt_outlined,color:Colors.white ),
                        Text("Dislike",style: TextStyle(fontSize: 13,color: Colors.white),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share,color: Colors.white, ),
                        Text("Share",style: TextStyle(fontSize: 13,color: Colors.white),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.vertical_align_bottom,color: Colors.white,),
                        Text("Dow..oad",style: TextStyle(fontSize: 13,color: Colors.white),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.library_add_outlined,color: Colors.white,),
                        Text("save",style: TextStyle(fontSize: 13,color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 0.5,
                  width:double.infinity,
                  color: Colors.white
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13,),
                    height: 35,
                    width: 35,
                    color: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(("${mainproviderfalse.Datapickkk?.Image2}"),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        ListTile(title: Text("${mainproviderfalse.Datapickkk?.CN}",style: TextStyle(color: Colors.white)),
                          subtitle:Text("${mainproviderfalse.Datapickkk?.Crlbe}",style: TextStyle(color: Colors.white60,fontSize: 13),),
                          trailing: Text("SUBSCRIBE",style: TextStyle(color: Colors.red.shade800,fontWeight: FontWeight.w800,fontSize: 20),),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Container(height: 0.5,
                  width:double.infinity,
                  color: Colors.white
              ),

              Row(
                children: [
                  Container(margin:EdgeInsets.all(10),child: Text("Commments",style: TextStyle(color: Colors.white),)),
                  Text("${mainproviderfalse.Datapickkk?.No}",style: TextStyle(color: Colors.white60),),
                ],
              ),

            ],
          ),
        ));
  }
}

























