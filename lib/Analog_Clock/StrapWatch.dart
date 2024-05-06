import 'dart:async';

import 'package:flutter/material.dart';

import '../Utils/global.dart';

class Strapwatch extends StatefulWidget {
  const Strapwatch({super.key});

  @override
  State<Strapwatch> createState() => _StrapwatchState();
}

class _StrapwatchState extends State<Strapwatch> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();

        if (dateTime.hour > 11) {
          time = 'PM';
        } else {
          time = 'AM';
        }

        switch (dateTime.weekday) {
          case 1:
            day = 'Monday';
            break;
          case 2:
            day = 'Tuesday';
            break;
          case 3:
            day = 'Wednesday';
            break;
          case 4:
            day = 'Thursday';
            break;
          case 5:
            day = 'Friday';
            break;
          case 6:
            day = 'Saturday';
            break;
        }
        switch (dateTime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
            break;
          case 3:
            month = 'march';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'Oguest';
            break;
          case 9:
            month = 'september';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'Nevember';
            break;
          case 12:
            month = 'December';
            break;
        }
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
                'https://w0.peakpx.com/wallpaper/336/491/HD-wallpaper-rocks-sea-surf-moon-night.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 220,
                  width: 220,
                  child: CircularProgressIndicator(
                    // strokeWidth: 5,
                    color: Colors.orange,
                    value: dateTime.second / 60,
                  ),
                ),
                SizedBox(
                  height: 240,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      child: CircularProgressIndicator(
                        // strokeWidth: 5,
                        color: Colors.white,
                        value: dateTime.minute / 60,
                      ),
                    ),
                    SizedBox(
                      height: 230,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: CircularProgressIndicator(
                            // strokeWidth: 5,
                            color: Colors.green,
                            value:
                                ((dateTime.hour % 12 + dateTime.minute / 60) /
                                    12),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              day,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              '$month ${dateTime.day},${dateTime.year}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 5),
                                  child: Text(
                                    time,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/digital');
                  },
                  child: Text(
                    'digital',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Clock');
                  },
                  child: Text(
                    'analogue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Strap');
                  },
                  child: Text(
                    'Strap',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
