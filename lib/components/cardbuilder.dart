import 'package:flutter/material.dart';
import 'package:phoenix/style.dart';

class CardBuilder extends StatelessWidget {
  final String text;
  final Color color;
  final IconData iconData;
  final Color splash;

  CardBuilder(this.text, this.color, this.iconData, this.splash);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: splash,
        onTap: () {},
        child: ListTile(
          title: Text(text,style: RegularStyle,),
          leading: Icon(iconData,color: splash,),
        ));
  }
}
