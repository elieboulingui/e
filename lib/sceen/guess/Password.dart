import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
   bool _isSecret = true;
   String password="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
       appBar:   AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
        ),
        body:Center(child:SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 30),
          child: Column(children: [
            
          Text("Entre your password"),
          SizedBox(height: 30,),
          TextFormField( 
            onChanged:(value)=>setState(() {
              password = value;
            }),
            validator: (Password) => password.length <6? 'enter a passwordS. 6 caracteres min required':null,
            obscureText: _isSecret,
            decoration: InputDecoration(
            suffixIcon: InkWell(onTap:(()=> setState(()=> _isSecret =!_isSecret)),
            child: Icon(!_isSecret ?Icons.visibility: Icons.visibility_off ),),
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
          ElevatedButton(onPressed: (){
            print(password);
          }, child: Text("continue", style: TextStyle(color: Colors.blueAccent),))
          ],),
      ),
  
      )
    ),
    );
}
}