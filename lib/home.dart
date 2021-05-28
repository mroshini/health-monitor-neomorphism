import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_health/res/colors.dart';
import 'package:your_health/your_health.dart';

class YourHealthHomeScreen extends StatefulWidget {
  @override
  _YourHealthHomeScreenState createState() => _YourHealthHomeScreenState();
}

class _YourHealthHomeScreenState extends State<YourHealthHomeScreen> {

  Padding daysAndTimeBox() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 135,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color:greyShade,
                    offset: Offset(4, 4),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(.2),
                    offset: Offset(-2, -2),
                    blurRadius: 0,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 13,
              left: 13,
              right: 10,
              bottom: 10,
              child: Container(
                width: 110,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color:greyShade,
                      offset: Offset(-3, -3),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: dateAndTimeInnerRow(),
              ),
            ),
          ],
        ),
      );

  Padding measureHealthHorizontalList() => Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          height: 250,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YourHealthScreen()),
                    );
                  },
                  child: Container(
                    width: 190,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-2, -2),
                            blurRadius: 3,
                            spreadRadius: 2),
                        BoxShadow(
                            color:greyShade,
                            offset: Offset(2, 2),
                            blurRadius: 3,
                            spreadRadius: 2),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Annual Savings',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  r'$35.100',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
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
                                      r'+$50 / day',
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
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: double.infinity,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white30,
                                          offset: Offset(3, 3),
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                        BoxShadow(
                                          color: Colors.white30,
                                          offset: Offset(-3, -3),
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: double.infinity,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[400]!,
                                          offset: Offset(-3, -3),
                                          blurRadius: 3,
                                          //spreadRadius: 3,
                                        ),
                                        BoxShadow(
                                          color: Colors.grey[100]!,
                                          offset: Offset(3, 3),
                                          blurRadius: 3,
                                          // spreadRadius: 3,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: 28,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purpleAccent.withOpacity(0.4),
                                          Colors.purpleAccent[100]!,
                                          Colors.purple[400]!,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );

  Padding objective() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4, 3),
                blurRadius: 3,
              ),
              BoxShadow(
                color:greyShade,
                offset: Offset(-4, -4),
                blurRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Objective",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Stop smoking",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Time to Quit",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "2-3 Months",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Padding footerRow() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            bottomMenu(Icons.home, true),
            SizedBox(
              width: 10,
            ),
            bottomMenu(Icons.account_circle, false),
            SizedBox(
              width: 10,
            ),
            bottomMenu(Icons.event_available, false),
            SizedBox(
              width: 10,
            ),
            bottomMenu(Icons.supervisor_account, false),
          ],
        ),
      );

  Row dateAndTimeInnerRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 75,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color:greyShade,
                    offset: Offset(0, 4),
                    blurRadius: 16,
                    spreadRadius: 2),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "14",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Days",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "05",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Hours",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "25",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Minutes",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );

  Widget bottomMenu(IconData icon, bool onPressed) => onPressed
      ? Stack(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(3, 3),
                    blurRadius: 1,
                  ),
                  BoxShadow(
                      color: Colors.grey[100]!,
                      offset: Offset(-2, -2),
                      blurRadius: 2,
                      spreadRadius: 2),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(9.0),
                  boxShadow: [
                    BoxShadow(
                      color:greyShade,
                      offset: Offset(-3, -3),
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.grey[100]!,
                      offset: Offset(2, 2),
                      blurRadius: 1,
                    ),
                  ]),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      : Stack(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color:greyShade,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                  )
                ],
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.black45,
                ),
              ),
            ),
            Positioned(
              left: 35,
              bottom: 35,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent[100]!,
                      Colors.purpleAccent,
                      Colors.purple[400]!,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Text(
                  'Hi, Jeni',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Great! You've been nicotine free for",
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              daysAndTimeBox(),
              SizedBox(
                height: 30,
              ),
              measureHealthHorizontalList(),
              SizedBox(
                height: 30,
              ),
              objective(),
              SizedBox(
                height: 30,
              ),
              footerRow(),
            ],
          ),
        ),
      ),
    );
  }
}
