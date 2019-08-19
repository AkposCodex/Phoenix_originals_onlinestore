import 'package:flutter/material.dart';
import 'package:phoenix/components/menu.dart';
import 'package:phoenix/functions/login.dart';


void main() => runApp(TabbedAppBarSample());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      debugShowCheckedModeBanner: false,
      title: "Phoenix Originals",
      home: Login(),
    );
  }
}

class HomeItems extends StatefulWidget{
  @override 
  _HomeItemsState createState() => _HomeItemsState();
}

class _HomeItemsState extends State<HomeItems>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Phoenix Originals '),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 24.0,
      ),
      body: new ListView(
        children: <Widget>[          
          
          new Padding(padding: const EdgeInsets.all(16.0),
          child: new Text('Categories'),
          ),
          
        ],
      ),
    );
  }
}