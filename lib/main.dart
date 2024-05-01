
import 'package:flutter/material.dart';

import 'Clock/Clock.dart';
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
      routes: {
        '/': (context) => const Buttons(),
        '/Clock': (context) => const Clockapp(),
      },
    );
  }
}
