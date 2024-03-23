import 'dart:ffi';

import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final RegExp emailRegExp= RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");
  String _email="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Center(child:SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child:
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("EVERYONE HAS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        Text("KNOWLEDGE ",style: TextStyle(color: Colors.blue,fontSize: 30),),
      Text("TO SHARE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
      SizedBox( height: 69,),
  Form(child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
          Text("Entre your email"),
          SizedBox(height: 30,),
          TextFormField( 
            onChanged: (Value)=> setState(() {
              _email =Value ;
            }),
            validator: (Value) =>  _email.isEmpty|| !emailRegExp.hasMatch(_email)? "please give a good email":null ,
            decoration: InputDecoration(
              hintText: "ex: elieboulingui2@gmail.com",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: Colors.grey
              ),
              ),
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: Colors.grey
              ),
              )
            ),

          ),
           ElevatedButton(
            onPressed: (){
            
            }, child: Text('continue',style: TextStyle(color: Colors.blue), ))
  ],))
      ],))) ,),);
  
  }
}