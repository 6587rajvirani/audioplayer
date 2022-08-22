import 'package:audioplayer/topProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var homeproviderfalse;
  var homeproviderTrue;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<top_Provider>(context, listen: false);
    homeproviderTrue = Provider.of<top_Provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor:Colors.black,
          body: ListView.builder(
            itemCount: homeproviderfalse.l1.length,
            itemBuilder: (context, index){
              return InkWell(onTap: (){
                homeproviderfalse.Datapick= Modeldata(Name:homeproviderfalse.l1[index].Name,Subtitie: homeproviderfalse.l1[index].Subtitie, Image: homeproviderfalse.l1[index].Image,Sub:homeproviderfalse.l1[index].Sub,Audio: homeproviderfalse.l1[index].Audio);
                Navigator.pushNamed(context, 'firat');
              },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8,left: 8,bottom: 8),
                          height: 60,
                          width: 60,
                          child: Image.asset(homeproviderfalse.l1[index].Image),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text("${homeproviderfalse.l1[index].Name}",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
                                subtitle: Text("${homeproviderfalse.l1[index].Subtitie}",style: TextStyle(color: Colors.white54,fontSize: 10),),
                                trailing: InkWell(onTap: (){},child: Icon(Icons.more_vert,size: 20,color: Colors.white,)),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        )
    );
  }


}
