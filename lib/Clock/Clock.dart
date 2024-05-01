
import 'dart:async';
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

        if(dateTime.hour>11)
        {
            time = 'PM';
        }
        else
        {
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
            Text(
              '${dateTime.hour%12} : ${dateTime.minute} : ${dateTime.second} $time',
              style: const TextStyle(color: Colors.white, fontSize: 38,fontWeight: FontWeight.bold),
            ),
            Text(
              '$day',
              style: const TextStyle(color: Colors.white, fontSize: 28,fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
