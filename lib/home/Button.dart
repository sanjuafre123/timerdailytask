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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 680,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Elevated'),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: FilledButton.tonal(
                    onPressed: () {},
                    child: Text(
                      'Filled Tonal',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 10),
                  child: IconButton.outlined(
                    onPressed: () {},
                    icon: Text('Outlined'),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 10),
                  child: TextButton(onPressed: () {

                  }, child: Text('Text'),),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 10),
                  child: FilledButton(
                    onPressed: () {},
                    child: Text('Filld'),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 10),
                  child: FloatingActionButton(onPressed: () {

                  },child: Icon(Icons.add),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

