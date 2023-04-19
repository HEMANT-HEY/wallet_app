import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallet_app/qrScaning.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Login(),));
     // Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> QrScanning(),));
    });
  }
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height= size.height;
    return Stack(
      children: [
        Container(
          width: width*1,
          height: height*1,
          color: Colors.white70,
          child: Image.asset("Assets/images/cce4737131fd74343fa88bf29f24a742-removebg-preview.png"),
        ),
        Padding(
          padding:EdgeInsets.only(top: height*0.7,left: width*0.2),
          child: Text("MONI WALLET APP",style: TextStyle(fontSize: 25,fontFamily:"MeriendaOne",
              decoration: TextDecoration.none,color: Colors.teal ),),
        )

      ],
    );
  }
}
