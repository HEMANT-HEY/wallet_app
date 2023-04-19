import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wallet_app/qrScaning.dart';
import 'package:wallet_app/searching_page.dart';

import 'add_bank_accounts.dart';
import 'my_scanner.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  //bool ptp=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
      var width=size.width;
      var height= size.height;
    return Scaffold(
     // backgroundColor:Colors.grey.shade300,
     bottomNavigationBar: CurvedNavigationBar(
       backgroundColor: Colors.white,
      color:Colors.teal,
       animationDuration: Duration(milliseconds: 100),
       items: [
         IconButton(icon: Icon(Icons.home),
         color: Colors.white,
         onPressed: (){},
         ),
         IconButton(icon: Icon(Icons.notifications_active),
           color: Colors.white,
           onPressed: (){
           showDialog(context: context, builder: (context){
             return Container(
               child: AlertDialog(
                 backgroundColor: Colors.teal,
                 title: Text("Messages not found...",style: TextStyle(fontSize: 12,color: Colors.white),),
               ),
             );
           });
           },
         ),
         IconButton(icon: Icon(Icons.search),
           color: Colors.white,
           onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
           },
         ),
         IconButton(icon: Icon(Icons.settings),
           color: Colors.white,
           onPressed: (){},
         ),
       ],
     ),
     body: Container(
       width: width,
       height: height,
       color: Colors.white,
       child: Column(
         children: [
           Padding(
             padding:EdgeInsets.only(top: height*0.06,left: width*0.05),
             child: Row(
               children: [
                 Text("My ",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                 Text("Cards",style: TextStyle(color: Colors.teal,fontSize: 30,fontWeight: FontWeight.bold),),
                 Padding(
                   padding:EdgeInsets.only(left: width*0.4),
                   child: Container(
                     height: height*0.06,
                     width: width*0.13,
                     child: IconButton(icon:Icon( Icons.add),
                       color:Colors.teal,
                       onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>AddBankAccount()));
                       },
                     ),
                     decoration: BoxDecoration(
                       color: Colors.white60,
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.shade500,
                           blurRadius: 11,
                           offset: Offset(4,5),
                         ),
                         BoxShadow(
                           color: Colors.white,
                           blurRadius:10,
                           offset: Offset(-8,-5),
                         ),
                       ]
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Padding(
             padding: EdgeInsets.only(top: height*0.05),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Padding(
                     padding:EdgeInsets.only(left: width*0.1),
                     child: Container(
                       width: width*0.8,
                       height: height*0.19,
                       decoration: BoxDecoration(
                         color: Colors.teal,
                         borderRadius: BorderRadius.circular(25),

                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.shade500,
                             blurRadius: 25,
                             offset: Offset(5,5),
                           ),
                           BoxShadow(
                             color: Colors.white,
                             blurRadius: 10,
                             offset: Offset(-5,-5),
                           ),
                         ],
                       ),
                       child: Column(
                         children: [
                           Padding(
                             padding:EdgeInsets.only(top: height*0.03,left: width*0.55),
                             child: Text("VISA",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w500),),
                           ),
                           Padding(
                             padding:EdgeInsets.only(right: width*0.55),
                             child: Text("Balance",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500),),
                           ),
                           Padding(
                             padding:EdgeInsets.only(top: height*0.01,right: width*0.45),
                             child: Text(" \$ 5,250.20",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w500),),
                           ),
                           Padding(
                             padding:EdgeInsets.only(top: height*0.04,left: width*0.05),
                             child: Row(
                               children: [
                                 Text("****3456",style: TextStyle(color: Colors.white),),
                                 Padding(
                                   padding:EdgeInsets.only(left: width*0.42),
                                   child: Text("10/24",style: TextStyle(color: Colors.white),),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Padding(
                     padding:EdgeInsets.only(left: width*0.1),
                     child: Container(
                       width: width*0.8,
                       height: height*0.19,
                       decoration: BoxDecoration(
                         color: Colors.teal,
                         borderRadius: BorderRadius.circular(25),

                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.shade500,
                             blurRadius: 25,
                             offset: Offset(5,5),
                           ),
                           BoxShadow(
                             color: Colors.white,
                             blurRadius: 10,
                             offset: Offset(-5,-5),
                           ),
                         ],
                       ),
                       child: Column(
                         children: [
                           Padding(
                             padding:EdgeInsets.only(top: height*0.03,left: width*0.55),
                             child: Text("VISA",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w500),),
                           ),
                           Padding(
                             padding:EdgeInsets.only(right: width*0.55),
                             child: Text("Balance",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500),),
                           ),
                           Padding(
                             padding:EdgeInsets.only(top: height*0.01,right: width*0.45),
                             child: Text(" \$ 5,250.20",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w500),),
                           ),
                           Padding(
                             padding:EdgeInsets.only(top: height*0.04,left: width*0.05),
                             child: Row(
                               children: [
                                 Text("****3456",style: TextStyle(color: Colors.white),),
                                 Padding(
                                   padding:EdgeInsets.only(left: width*0.42),
                                   child: Text("10/24",style: TextStyle(color: Colors.white),),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
           Padding(
             padding:EdgeInsets.only(top: height*0.03),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Padding(
                     padding:EdgeInsets.only(left: width*0.08),
                     child: Column(
                       children: [
                         SizedBox(height:15,),
Container(
width: width*0.15,
height: height*0.08,
child: IconButton(icon:Icon(Icons.install_mobile),
hoverColor: Colors.red,
focusColor: Colors.red, highlightColor: Colors.red,
isSelected: true,
splashColor: Colors.teal,
color: Colors.teal,
onPressed: (){},
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Colors.grey.shade300,
boxShadow: [
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
),
BoxShadow(
color: Colors.white,
blurRadius: 30,
offset: Offset(-6,-6),
),
],
),
),
Text("Mobile\nRecharge",style: TextStyle(fontSize: 11),),
],
),
                   ),
                   SizedBox(width:30),
                   Column(
children: [
  SizedBox(height:15,),
Container(
width: width*0.15,
height: height*0.08,
child: IconButton(icon:Icon(Icons.payments),
splashColor: Colors.teal,
color: Colors.teal,
onPressed: (){
Get.to(QrScanning());
},
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Colors.grey.shade300,
boxShadow: [
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
),
BoxShadow(
color: Colors.white,
blurRadius: 30,
offset: Offset(-6,-6),
),
],
),
),
Text("\nPay/Scan",style: TextStyle(fontSize: 11),),
],
),
                   SizedBox(width:30,),

                   Column(
children: [
  SizedBox(height:15,),
Container(
width: width*0.15,
height: height*0.08,
child: IconButton(icon:Icon(Icons.home_work_outlined),
splashColor: Colors.teal,
color: Colors.teal,
onPressed: (){},
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Colors.grey.shade300,
boxShadow: [
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
),
BoxShadow(
color: Colors.white,
blurRadius: 30,
offset: Offset(-6,-6),
),
],
),
),
Text("Bank\nTransfer",style: TextStyle(fontSize: 11),),
],
),
                   SizedBox(width: 30),
                   Column(
children: [
  SizedBox(height:15,),
Container(
width: width*0.15,
height: height*0.08,
child: IconButton(icon:Icon(Icons.qr_code_scanner),
splashColor: Colors.teal,
color: Colors.teal,
onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>Scanner()));
},
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Colors.grey.shade300,
boxShadow: [
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
),
BoxShadow(
color: Colors.white,
blurRadius: 30,
offset: Offset(-6,-6),
),
],
),
),
Text("My\nScanner",style: TextStyle(fontSize: 11),),
],
),
                   SizedBox(width: 30),
                   Column(
children: [
  SizedBox(height:15,),
Container(
width: width*0.15,
height: height*0.08,
child: IconButton(icon:Icon(Icons.list_alt_outlined),
splashColor: Colors.teal,
color: Colors.teal,
onPressed: (){},
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Colors.grey.shade300,
boxShadow: [
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
),
BoxShadow(
color: Colors.white,
blurRadius: 30,
offset: Offset(-6,-6),
),
],
),
),
Text("Pay\nBills",style: TextStyle(fontSize: 11),),
],
),
                   SizedBox(width: 30),
                 ],
               ),
             ),
           ),
           Padding(
             padding:EdgeInsets.only(top: height*0.03,left: width*0.03),
             child: Card(
               elevation: 0,
               child: ListTile(
                 onTap: (){},
                 splashColor: Colors.teal,
                 leading:Container(
width: width*0.15,
height: height*0.07,
child: IconButton(icon:Icon(Icons.account_balance_wallet),
splashColor: Colors.teal,
color: Colors.teal,
onPressed: (){},
),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Colors.grey.shade300,
boxShadow: [
BoxShadow(
color: Colors.grey.shade500,
blurRadius: 15,
offset: Offset(5,5),
),
BoxShadow(
color: Colors.white,
blurRadius: 30,
offset: Offset(-6,-6),
),
],
),
),
                 title:  Text("Statistics",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                 subtitle: Text("Payments and Income",style: TextStyle(fontSize: 12),),
                 trailing:  Icon(Icons.navigate_next,color: Colors.teal,),
           ),
             ),),
           Padding(
             padding:EdgeInsets.only(top: height*0.01,left: width*0.03),
             child: Card(
               elevation: 0,
               child: ListTile(
                 onTap: (){},
                 splashColor: Colors.teal,
                 leading:Container(
                   width: width*0.15,
                   height: height*0.07,
                   child: Icon(Icons.transfer_within_a_station,color: Colors.teal,),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.grey.shade300,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.shade500,
                         blurRadius: 15,
                         offset: Offset(5,5),
                       ),
                       BoxShadow(
                         color: Colors.white,
                         blurRadius: 30,
                         offset: Offset(-6,-6),
                       ),
                     ],
                   ),
                 ),
                 title:  Text("Transactions",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                 subtitle: Text("Transaction history",style: TextStyle(fontSize: 12),),
                 trailing:  Icon(Icons.navigate_next,color: Colors.teal,),
               ),
             ),),
           Padding(
             padding:EdgeInsets.only(top: height*0.01,left: width*0.03),
             child: Card(
               elevation: 0,
               child: ListTile(
                 onTap: (){},
                 splashColor: Colors.teal,
                 leading:Container(
                   width: width*0.15,
                   height: height*0.07,
                   child: IconButton(icon:Icon(Icons.account_balance_wallet),
                     splashColor: Colors.teal,
                     color: Colors.teal,
                     onPressed: (){},
                   ),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.grey.shade300,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.shade500,
                         blurRadius: 15,
                         offset: Offset(5,5),
                       ),
                       BoxShadow(
                         color: Colors.white,
                         blurRadius: 30,
                         offset: Offset(-6,-6),
                       ),
                     ],
                   ),
                 ),
                 title:  Text("Statistics",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                 subtitle: Text("Payments and Income",style: TextStyle(fontSize: 12),),
                 trailing:  Icon(Icons.navigate_next,color: Colors.teal,),
               ),
             ),),
           ],
       ),
     ),
    );
  }
}











// SizedBox(height: 55),
//
// Row(
// children: [
// Container(
// width: width*0.15,
// height: height*0.07,
// child: IconButton(icon:Icon(Icons.transfer_within_a_station),
// splashColor: Colors.teal,
// color: Colors.teal,
// onPressed: (){},
// ),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Colors.grey.shade300,
// boxShadow: [
// BoxShadow(
// color: Colors.grey.shade500,
// blurRadius: 30,
// offset: Offset(5,5),
// ),
// BoxShadow(
// color: Colors.white,
// blurRadius: 30,
// offset: Offset(-6,-6),
// ),
// ],
// ),
// ),
// ],
// ),
// Padding(
// padding:EdgeInsets.only(top: height*0.66,left: width*0.3),
// child: Container(
// child: ListTile(
// title: Text("Statistics",style: TextStyle(fontWeight:FontWeight.bold),),
// subtitle: Text("Payments ant Income"),
// trailing: IconButton(icon: Icon(Icons.navigate_next),
// splashColor: Colors.teal,
// onPressed: (){},
// ),
// ),
// ),
// ),
// Padding(
// padding:EdgeInsets.only(top: height*0.75,left: width*0.3),
// child: Container(
// child: ListTile(
// title: Text("Transactions",style: TextStyle(fontWeight:FontWeight.bold),),
// subtitle: Text("Transaction history"),
// trailing: IconButton(icon: Icon(Icons.navigate_next),
// splashColor: Colors.teal,
// onPressed: (){},
// ),
// ),
// ),
// ),