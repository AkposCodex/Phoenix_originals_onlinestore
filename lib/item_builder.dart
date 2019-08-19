import 'package:flutter/material.dart';
import 'text_section.dart';

class ItemBuilder extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return GridTile(
      child: Column(
        children: <Widget>[
          Row(
        children: <Widget>[
          Image.asset("name"),
          TextSection("Product Name","Product Description"),
        ],
      ),
        
        ],
      )
      
    );
  }
}