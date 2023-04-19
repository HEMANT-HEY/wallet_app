import 'package:flutter/material.dart';

import 'catelogue_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override

  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();
  final emailController=TextEditingController();
  final passController=TextEditingController();

  // @override
  // void dispose(){
  //   super.dispose();
  //   emailController.dispose();
  //   passController.dispose();
  // }

  @override

  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height= size.height;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        width: width*1,
        height: height*1,
        color:Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("Assets/images/12369c1bc3189b62ab6e5b0c14580dea-removebg-preview.png"),
              Form(
                key:_formKey ,
                child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Container(
                      width: width*0.9,
                      height: height*0.06,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter email I'd",
                          labelText: "Email I'd",
                          suffixIcon: Icon(Icons.mail,size: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter email";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: width*0.05,right: width*0.05,top: height*0.01),
                    child: Container(
                      width: width*0.9,
                      height: height*0.06,
                      child: TextFormField(
                        controller: passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          suffixIcon: Icon(Icons.key_sharp,size: 20,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter Password";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: width*0.034),
                    child: Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text("Remember me",style: TextStyle(fontSize: 12),)),
                        Padding(
                          padding:EdgeInsets.only(left: width*0.35),
                          child: TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(fontSize: 12),)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height*0.06,
                    width: width*0.9,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        primary: Colors.tealAccent.shade700
                      ),
                      child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 18),),
                      onPressed: (){
                        if(_formKey.currentState!.validate()){

                        }

                       Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));
                      },
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.tealAccent.shade700,
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.only(top: height*0.01),
                    child: Container(
                      height: height*0.06,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.tealAccent.shade700,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left: width*0.2),
                            child: Image.asset("Assets/images/icons8-google-48.png",height: height*0.04),
                          ),
                          TextButton(onPressed: (){}, child: Text("Sign Up with Google",style: TextStyle(color: Colors.white,fontSize: 16),))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
