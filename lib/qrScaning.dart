import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanning extends StatefulWidget {
  const QrScanning({Key? key}) : super(key: key);

  @override
  State<QrScanning> createState() => _QrScanningState();
}

class _QrScanningState extends State<QrScanning> {
  final GlobalKey _globalKey=GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller){
    this.controller=controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result=event;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding:EdgeInsets.only(top: height*0.2),
              child: Container(
                width: width*0.6,
                height: height*0.3,
                child: QRView(
                  key: _globalKey,
                  onQRViewCreated: qr,
                ),
              ),
            ),
          ),
          (result!=null)? Text("${result!.code}"):Text("Scan QR"),
        ],
      ),
    );
  }
}
