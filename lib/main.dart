import 'package:flutter/material.dart';
import 'home_page.dart';
int main(){

  runApp(new MyApp());

}

class MyApp extends StatelessWidget{


    @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage()
    );
  }

}

