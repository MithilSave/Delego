import 'package:flutter/material.dart';
import 'package:delego/Pages/Schedule Page/schedule_pagebody.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: Text("Schedule"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
               Tab(
                text: "Day 1",
              ),
               Tab(
                text: "Day 2",
              ),
               Tab(
                text: "Day 3",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
             Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   GradientAppBar(" November 3 , 2023"),
                   ShedulePageBody(),
                ],
              ),
            ),
             Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   GradientAppBar("Novemeber 4, 2023"),
                   HomePageBodyDay2(),
                ],
              ),
            ),
             Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   GradientAppBar("November 5, 2023"),
                   HomePageBodyDay3(),
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

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Center(
        child: Text(
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

