import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:audioplayer/video/videoProviderScreen.dart';

import 'modalclass.dart';



class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  var mainproviderfalse;
  var mainproviderTrue;


  @override
  Widget build(BuildContext context) {
    mainproviderfalse = Provider.of<main_provider>(context, listen: false);
    mainproviderTrue = Provider.of<main_provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor:Colors.black,
          body: Column(
            children: [
              Container(
                child: CarouselSlider.builder(
                  itemCount: mainproviderfalse!.d1.length,
                  itemBuilder: (context ,index, _){
                    return Container(
                      child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.asset("${mainproviderfalse!.d1[index].Image2}"),
                            Container(margin: EdgeInsets.only(bottom: 10,left: 10),child: Text("${mainproviderfalse!.d1[index].CN}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),))
                          ]),
                    );
                  },
                  options:CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      viewportFraction:0.7,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 3),

                      onPageChanged: (index , _){
                        mainproviderfalse!.changsposition(index);
                      }
                  ),
                ),
              ),
              SizedBox(height: 8,),
              DotsIndicator(
                dotsCount: mainproviderTrue!.d1.length,
                position: mainproviderTrue!.i.toDouble(),
              ),


              Expanded(
                child: ListView.builder(
                  itemCount: mainproviderfalse.i1.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        mainproviderfalse.Datapickkk = Modeldata2(
                            Name2: mainproviderfalse.i1[index].Name2,
                            Image2: mainproviderfalse.i1[index].Image2,
                            Sub2: mainproviderfalse.i1[index].Sub2,
                            Date: mainproviderfalse.i1[index].Date,
                            Like: mainproviderfalse.i1[index].Like,
                            Crlbe: mainproviderfalse.i1[index].Crlbe,
                            CN:mainproviderfalse.i1[index].CN,
                            No: mainproviderfalse.i1[index].No,
                            Video: mainproviderfalse.i1[index].Video);
                        Navigator.pushNamed(context, 'sec');
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 10, bottom: 15, right: 10),
                                    height: 220,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black),
                                    child: Image.asset(mainproviderfalse.i1[index].Image2),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(bottom: 18),
                                      child: Text(
                                        "${mainproviderfalse.i1[index].Name2}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

//
