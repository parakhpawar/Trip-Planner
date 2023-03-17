import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  TextFieldExample(),
    );
  }
}

class TextFieldExample extends StatefulWidget {
 @override
 State<TextFieldExample> createState() => _TextFieldExampleState();
}

class TextFieldState extends State<TextFieldExample>{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text ("Solo-Trips"),


      ),
      body:Column(
        children: <Widget>[
          Container( child:TextField(),
          ),
           Container( child:TextField(),
          ),
          Container( child: ButtonBar(
            color:Colors.blue,
            textColor:Colors.white,
            child : Text("Generate Iteniary"),
          ),
          ),
          Text(
            "Location mentioned:",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'Roboto'
            ),
          ),

           Text(
            "Number of days: ",
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'Roboto'
            ),
          )
          
        ],
      ),
    );
   

}

}