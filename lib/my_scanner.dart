import 'package:flutter/material.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height= size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("My QR Code"),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Padding(
            padding:EdgeInsets.only(top:height*0.1,left: width*0.3 ),
            child: Text("MONI WALLET",style: TextStyle(fontSize: 25,fontFamily:"MeriendaOne-Regular",color: Colors.teal ),),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.15),
            child: Image.asset("Assets/images/IMG_20221205_143302.jpg"),
          ),
        ],
      ),
    );
  }
}
