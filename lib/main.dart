import 'dart:math';
import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    home:homepage(),
    title: "dice for",
    theme: ThemeData(),
    debugShowCheckedModeBanner: false,
  )
);
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int leftclick=1;
  int rightclick=1;
  rndom (){
    setState(() {
      leftclick=Random().nextInt(6)+1;
      rightclick=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    
      
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade700,

      
      body:Center(child:Row(
        
        children: <Widget>[
        Expanded(
                  child: FlatButton(onPressed:(){
                    rndom();
                  },
           child:Image(
             image: AssetImage("images/dice$leftclick.png"),
             ),
             ),
        ),
        Expanded(
                  child: FlatButton(onPressed:(){
                    rndom();
                  },
           child:Image(
             image: AssetImage("images/dice$rightclick.png"),),
             
             
             ),
        ),

      ],),),
      
    );
  }
}

