import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:timerdailytask/Utils/global.dart';

class Clockapp extends StatefulWidget {
  const Clockapp({super.key});

  @override
  State<Clockapp> createState() => _ClockappState();
}

class _ClockappState extends State<Clockapp> {
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
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${dateTime.hour % 12} : ${dateTime.minute} : ${dateTime.second} ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    '$time',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Text(
              '$day',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 190,
              width: 190,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 4, color: Colors.white)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ...List.generate(
                      60,
                      (index) => Transform.rotate(
                           angle: ((index + 1) * 6 * pi) / 180,
                          child: ((index + 1) % 5 == 0)
                              ? const VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white,
                                  indent: 0,
                                  endIndent: 166,
                                )
                              : const VerticalDivider(
                                  thickness: 1,
                                  color: Colors.blueAccent,
                                  indent: 0,
                                  endIndent: 170,
                                ))),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                  Transform.rotate(
                    angle: dateTime.second * (6 * pi) / 180,
                    child: const VerticalDivider(
                      thickness: 2,
                      indent: 25,
                      endIndent: 91,
                    ),
                  ),
                  Transform.rotate(
                    angle: dateTime.minute * (6 * pi) / 180,
                    child: const VerticalDivider(
                      thickness: 3,
                      indent: 27,
                      endIndent: 91,
                    ),
                  ),
                  Transform.rotate(
                    angle: (dateTime.hour % 12 + dateTime.minute/60) * 30 * pi/180,
                    child: const VerticalDivider(
                      thickness: 3,
                      color: Colors.red,
                      indent: 37,
                      endIndent: 91,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
