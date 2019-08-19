import 'package:flutter/material.dart';
import 'package:phoenix/style.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text('#InStyleIsStrength', style: BodyStyle1,),
          ),
          
          CircleAvatar(            
            backgroundColor: Colors.black,
            radius: 50.0,
            child: Icon(Icons.fingerprint, color: Colors.white,size: 45.0,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 14.0),
            child: Text('Login', style: TitleStyle_dark,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 2.0, 18.0, 14.0),
            child: TextField(
              showCursor: true,
              cursorWidth: 5.0,cursorColor: Colors.blue,
              textDirection: TextDirection.ltr,
              onTap: (){},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              showCursor: true,
              cursorWidth: 5.0,cursorColor: Colors.blue,
              textDirection: TextDirection.ltr,
              onTap: (){},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               Padding(
            padding: const EdgeInsets.all(18.0),
            child: MaterialButton(
              onPressed: (){},
              elevation: 12.0,
              splashColor: Colors.blue,
              minWidth: 120.0,
              color: Colors.black,
              child: Text('Login',style: TitleStyle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MaterialButton(
              onPressed: (){},
              elevation: 12.0,
              splashColor: Colors.pink,
              minWidth: 120.0,
              color: Colors.white,
              child: Text('Sign Up',style: TitleStyle_dark),
            ),
          ),
            ],
          ),
         
        ],
      ),
    );
  }
}