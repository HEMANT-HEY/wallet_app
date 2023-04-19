import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
           Padding(
             padding:EdgeInsets.only(top: height*0.02,left: width*0.03),
             child: Row(
               children: [
                 Text("My ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                 Text("Contacts ",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
               ],
             ),
           ),
            Container(
             width: width*0.8,
              height: height*0.05,
              child: TextFormField(
                decoration:InputDecoration(
                  prefixIcon: Icon(Icons.search,size: 20,),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 12),
                  fillColor: Colors.teal.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
