import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Buttons(),
      },
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Commons Button'),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: double.infinity,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('submit'),
              ),
              FilledButton(
                onPressed: () {},
                child: Text('FilledButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
