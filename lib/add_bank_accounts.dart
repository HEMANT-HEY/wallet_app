import 'package:flutter/material.dart';

class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: SizedBox(
          height:40,
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search banks",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.help_outline),
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: height*0.08,
                      width: width*0.4,
                      color: Colors.teal,
                      child: TextButton(
                        child: Text("Get help",style: TextStyle(fontSize: 20,color: Colors.white),),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      height: height*0.08,
                      width: width*0.4,
                      color: Colors.teal,
                      child: TextButton(
                        child: Text("Send feedback",style: TextStyle(fontSize: 20,color: Colors.white),),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              );
            });
          },color: Colors.black,),
        ],
      ),
      body: Stack(
        children: [
         Padding(
           padding:EdgeInsets.only(left: width*0.03),
           child: Text("Select your bank",style: TextStyle(color: Colors.teal,fontSize: 30),),
         ),
          Column(
            children: [
              Padding(
                padding:EdgeInsets.only(left: width*0.05,top: height*0.05),
                child: Container(
                  height: height*0.4,
                  width: width*0.9,
                  color: Colors.red,
                  child:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: [
                    Container(
                      height: height*0.01,
                      width: width*0.3,
                      color: Colors.black,
                    ),
                  ],),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(right: width*0.65,top: height*0.02),
                child: Text("ALL BANKS",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
