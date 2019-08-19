// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:phoenix/style.dart';
import 'cardbuilder.dart';

class TabbedAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: AppBarStyle),
          ),
          iconTheme: IconThemeData(color: Colors.yellow[300]),
          textTheme: TextTheme(
            title: TitleStyle,
            body1: BodyStyle1,
          )),
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Phoenix Originals'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Menu choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(
                    choice.icon,
                  ),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Menu choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
          drawer: Drawer(
            child: new ListView(
              
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text('EdgeGod',style: TitleStyle,),
                  accountEmail: Text('litle1akp@gmail.com',style: SubtitleStyle,),
                  currentAccountPicture: new GestureDetector(
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person_add,
                        )),
                  ),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CardBuilder('Login', Colors.black, Icons.person_add,Colors.black) ,
                    Divider(),
                CardBuilder('Settings', Colors.black, Icons.settings,Colors.blue),
                Divider(),
                CardBuilder('Checkout', Colors.black, Icons.shopping_cart, Colors.pink),
                Divider(),
                CardBuilder('Share', Colors.black, Icons.share,Colors.green),
                Divider(),
                CardBuilder('Categories', Colors.black, Icons.share, Colors.orange),
                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Menu {
  const Menu({
    this.title,
    this.icon,
  });

  final String title;
  final IconData icon;
}

const List<Menu> choices = const <Menu>[
  const Menu(
    title: 'Featured',
    icon: Icons.star,
  ),
  const Menu(title: 'Deals of the Day', icon: Icons.lightbulb_outline),
  const Menu(title: 'Style me Up', icon: Icons.favorite),
  const Menu(
    title: 'Friends',
    icon: Icons.people,
  ),

];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Menu choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text('Phoenix', style: textStyle),
            Text(
              '#InStyleIsStrength',
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
