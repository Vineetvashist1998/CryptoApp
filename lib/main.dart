import 'package:fluttercrypto/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:fluttercrypto/home_page.dart';

void main() async {
  Injector.configure(Flavor.PROD);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FullScreenImage(),
    );
  }
}
class FullScreenImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFffc6c4),
        centerTitle: true,
        title: Text('Crypto Currency', style: TextStyle(color: Colors.black,
        ),
        ),
        ),
      body:  Stack(
        children: <Widget>[
          Center(
            child: new Image.asset('assets/hello.jpg',
        width:2160,
        height:4230,          
          fit: BoxFit.fill, 
          ),
          ),
          Center(
            child:  RaisedButton (
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Text("Prize of Currency", 
              style: TextStyle(
                color: Colors.black,
                fontSize:  25.0,
                fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic
                ),
                ),
              splashColor: Color(0XFFacbbea),
              color: Color(0XFFffc6c4),
              
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HomePage() ));
              },
            ),
          )
        ]
      ),
      );

  }
}


















