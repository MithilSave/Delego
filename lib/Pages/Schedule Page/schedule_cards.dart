import 'package:flutter/material.dart';
import 'package:delego/models/shedule.dart';
import 'package:delego/constants/fonts.dart';
import 'package:delego/constants/text_style.dart';
import 'package:delego/constants/separator.dart';
import 'package:delego/Pages/Schedule Page/schedule_details.dart';

class ScheduleSummary extends StatelessWidget {
  final Schedule schedule;
  final bool horizontal;

  ScheduleSummary(this.schedule, {this.horizontal = true});

  ScheduleSummary.vertical(this.schedule) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final scheduleThumbnail =  Container(
      margin:  EdgeInsets.symmetric(vertical: 16.0),
      alignment:
      horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child:  Hero(
        tag: "schedule-hero-${schedule.id}",
        child:  Image(
          image:  AssetImage(schedule.image!),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _scheduleValue({String? value, String? image}) {
      return  Container(
        child:  Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
           Image.asset(image!, height: 12.0),
           Container(width: 8.0),
           Text(
            schedule.time!,
            style: TextStyle(
                fontFamily: AppFontFamilies.mainFont, color: Colors.white),
          ),
        ]),
      );
    }

    final scheduleCardContent =  Container(
      margin:  EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints:  BoxConstraints.expand(),
      child: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment:
          horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: <Widget>[
             Container(height: 2.0),
             Text(schedule.name!, style: Style.titleTextStyle),
             Container(height: 2.0),
             Text(schedule.location!, style: Style.commonTextStyle),
             Separator(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Expanded(
                    flex: horizontal ? 1 : 0,
                    child: _scheduleValue(
                        value: schedule.time,
                        image: 'assets/img/ic_distance.png')),
              ],
            ),
          ],
        ),
      ),
    );

    final scheduleCard =  Container(
      child: scheduleCardContent,
      height: MediaQuery.of(context).size.height * 0.17,
      margin: horizontal
          ?  EdgeInsets.only(left: 46.0)
          :  EdgeInsets.only(top: 72.0),
      decoration:  BoxDecoration(
        color: Colors.blue.shade900,
        shape: BoxShape.rectangle,
        borderRadius:  BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
           BoxShadow(
            color: Colors.black45,
            blurRadius: 10.0,
            offset:  Offset(0.0, 8.0),
          ),
        ],
      ),
    );

    return  GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
           PageRouteBuilder(
            pageBuilder: (_, __, ___) =>  DetailPage(schedule),
            transitionsBuilder: (context, animation, secondaryAnimation,
                child) =>
             FadeTransition(opacity: animation, child: child),
          ),
        )
            : null,
        child:  Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child:  Stack(
            children: <Widget>[
              scheduleCard,
              scheduleThumbnail,
            ],
          ),
        ));
  }
}