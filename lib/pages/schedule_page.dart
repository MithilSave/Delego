import 'package:flutter/material.dart';
import 'package:delego/Components/schedule_pagebody.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          backgroundColor: Colors.blue.shade900,
          title: new Text("Schedule"),
          bottom: new TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(
                text: "Day 1",
              ),
              new Tab(
                text: "Day 2",
              ),
              new Tab(
                text: "Day 3",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Scaffold(
              body: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new GradientAppBar(" November 3 , 2023"),
                  new ShedulePageBody(),
                ],
              ),
            ),
            new Scaffold(
              body: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new GradientAppBar("Novemeber 4, 2023"),
                  new HomePageBodyDay2(),
                ],
              ),
            ),
            new Scaffold(
              body: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new GradientAppBar("November 5, 2023"),
                  new HomePageBodyDay3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Center(
        child: new Text(
          title,
          style: TextStyle(
              color: Colors.blue.shade900,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24.0),
        ),
      ),
    );
  }
}

