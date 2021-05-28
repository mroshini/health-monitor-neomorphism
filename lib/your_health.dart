import 'dart:math';

import 'package:flutter/material.dart';
import 'package:your_health/cutsom_painter.dart';
import 'package:your_health/middle_ring.dart';
import 'package:your_health/res/colors.dart';

class YourHealthScreen extends StatefulWidget {
  @override
  _YourHealthScreenState createState() => _YourHealthScreenState();
}

class _YourHealthScreenState extends State<YourHealthScreen> {
  var currentIndex = 0;
  final healthTracker = [
    "Heart",
    "Eye",
    "Neck",
    "Hands",
    "Heart",
    "Eye",
    "Neck"
  ];

  Padding healthVerticalList() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          spreadRadius: 1),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-2, -2),
                          blurRadius: 2,
                          spreadRadius: 1),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              child: Center(
                                child: Text(
                                  '70%',
                                  style: TextStyle(
                                      color: Colors.purpleAccent,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300]!,
                                    offset: Offset(-4, -4),
                                    blurRadius: 3,
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(3, 3),
                                    blurRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Your heart',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Yesterday',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            border: Border.all(
                              color: Colors.purple[100]!,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Very Good',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      );

  Padding topHeaderView() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 50,
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black45,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  offset: Offset(3, 3),
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-3, -3),
                  blurRadius: 3,
                ),
              ],
            ),
          ),
        ),
      );

  Stack customPainterProgress() => Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                //1
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(.8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(.15),
                          offset: Offset(-3, -3),
                          blurRadius: 6,
                          spreadRadius: 3),
                      BoxShadow(
                          color: Colors.grey[200]!,
                          offset: Offset(3, 3),
                          blurRadius: 6,
                          spreadRadius: 3),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    //2
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200]!,
                            offset: Offset(-3, -3),
                            blurRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.grey[100]!,
                            offset: Offset(3, 3),
                            blurRadius: 3,
                          ),
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Center(child: MiddleRing(width: 300.0)),
                        Transform.rotate(
                          angle: pi * 1.6,
                          child: CustomPaint(
                            child: Center(),
                            painter: ProgressRings(
                              completedPercentage: 0.65,
                              circleWidth: 50.0,
                              gradient: greenGradient,
                              gradientStartAngle: 0.0,
                              gradientEndAngle: pi / 3,
                              progressStartAngle: 1.85,
                              lengthToRemove: 3,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi / 1.8,
                          child: CustomPaint(
                            child: Center(),
                            painter: ProgressRings(
                              completedPercentage: 0.20,
                              circleWidth: 50.0,
                              gradient: turqoiseGradient,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi / 2.6,
                          child: CustomPaint(
                            child: Center(),
                            painter: ProgressRings(
                              completedPercentage: 0.35,
                              circleWidth: 50.0,
                              gradient: redGradient,
                              gradientStartAngle: 0.0,
                              gradientEndAngle: pi / 2,
                              progressStartAngle: 1.85,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: pi * 1.1,
                          child: CustomPaint(
                            child: Center(),
                            painter: ProgressRings(
                              completedPercentage: 0.24,
                              circleWidth: 50.0,
                              gradient: orangeGradient,
                              gradientStartAngle: 0.0,
                              gradientEndAngle: pi / 2,
                              progressStartAngle: 1.85,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  Padding healthHorizontalList() => Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          height: 120,
          //color: Colors.blue,
          child: ListView.builder(
            itemCount: healthTracker.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        currentIndex = index;
                      },
                    );
                  },
                  child: (currentIndex == index)
                      ? bodyPartsContainer(true, healthTracker[index])
                      : bodyPartsContainer(false, healthTracker[index]),
                ),
              );
            },
          ),
        ),
      );

  final innerColor = Color.fromRGBO(233, 242, 249, 1);

  final shadowColor = Color.fromRGBO(220, 227, 234, 1);

  static const greenGradient = [
    Color.fromRGBO(223, 250, 92, 1),
    Color.fromRGBO(129, 250, 112, 1)
  ];

  static const turqoiseGradient = [
    Color.fromRGBO(91, 253, 199, 1),
    Color.fromRGBO(129, 182, 205, 1)
  ];

  static const redGradient = [
    Color.fromRGBO(255, 93, 91, 1),
    Color.fromRGBO(254, 154, 92, 1),
  ];

  static const orangeGradient = [
    Color.fromRGBO(251, 173, 86, 1),
    Color.fromRGBO(253, 255, 93, 1),
  ];

  Widget bodyPartsContainer(bool isPressed, String healthTrack) => isPressed
      ? Container(
          width: 190,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[100]!,
                    offset: Offset(3, 3),
                    blurRadius: 3,
                    //spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey[200]!,
                    offset: Offset(-3, -3),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '$healthTrack',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                offset: Offset(3, 3),
                blurRadius: 3,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                offset: Offset(-3, -3),
                blurRadius: 3,
              ),
            ],
          ),
        )
      : Container(
          width: 210,
          child: Center(
            child: Text(
              '$healthTrack',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                offset: Offset(3, 3),
                blurRadius: 3,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.white60,
                offset: Offset(-3, -3),
                blurRadius: 2,
                spreadRadius: 2,
              ),
            ],
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        topHeaderView(),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 0.0),
                          child: Text(
                            'Your Health',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 0.0),
                          child: Text(
                            'Keep monitoring your health performance',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        healthHorizontalList(),
                        SizedBox(
                          height: 20,
                        ),
                        customPainterProgress(),
                        healthVerticalList(),
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}
