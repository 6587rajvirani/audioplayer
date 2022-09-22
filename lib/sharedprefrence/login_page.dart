import 'package:audioplayer/sharedprefrence/shared_preferencespage.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  var txtkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Emter Email';
                      }
                      else{
                        return null;
                      }
                    },
                    controller: txtemail,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      label: Text("E-mail"),
                      suffixIcon: Icon(Icons.email_outlined,color: Colors.blue.shade900,),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:25,right: 25,top: 15,bottom: 15),
                  child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty)
                        {
                          return 'Emter Password';
                        }
                        else{
                          return null;
                        }
                      },
                    controller: txtpassword,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      label: Text("Password"),
                      suffixIcon: Icon(Icons.lock,color: Colors.blue.shade900,),
                    ),
                  ),
                ),

                InkWell(onTap: ()async{
                  if(txtkey.currentState!.validate() == true){
                    Navigator.pushReplacementNamed(context, 'intro');
                  }
                  String iEmail = txtemail.text;
                  String iPassword = txtpassword.text;

                  SHRModel s2 = await getSHR();
                  if(iEmail == s2.e1 && iPassword == s2.p1) {
                    setSHR(iEmail, iPassword, true);
                    Navigator.pushReplacementNamed(context, 'intro');
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid UserName or Password"),));
                  }
                },
                  child: Container(
                    color: Colors.blue.shade600,
                    margin: EdgeInsets.all(25),
                    width: double.infinity,
                    height: 40,
                    child: Center(child: Text("Sign in",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account?"),
                    InkWell(onTap: (){
                      Navigator.pushReplacementNamed(context, 'new');
                    },
                      child: Text("Sign up",style: TextStyle(color: Colors.blue),),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


