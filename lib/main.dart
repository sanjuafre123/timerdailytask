
import 'package:flutter/material.dart';

import 'Analog_Clock/StrapWatch.dart';
import 'Clock/Clock.dart';
import 'DigitalClock/digital_clock.dart';
import 'home/buttons.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/digital',
      routes: {
        '/': (context) => const Buttons(),
        '/Clock': (context) => const Clockapp(),
        '/Strap' : (context) => Strapwatch(),
        '/digital' : (context) => DigitalClock(),
      },
    );
  }
}
