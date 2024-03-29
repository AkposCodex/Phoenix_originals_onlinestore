import 'package:flutter/material.dart';

class TextSection extends StatelessWidget{
  final String _title;
  final String _body;
  static const double _hpad = 16.0;
  TextSection(this._title, this._body);

  @override 
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
         child: Text(_title)
          ),
          Container(
          padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
         child: Text(_body)
        )
      ],
    );
  }
}