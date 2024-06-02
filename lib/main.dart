import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> data = List.generate(20, (index) => index + 1);
    List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

    List<Widget> generateItems() {
      return data.map((number) {
        return Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(
            color: colors[number % 4],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 90,
                fontWeight: FontWeight.w600,
                fontFamily: 'Rounded',
              ),
            ),
          ),
        );
      }).toList();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View Sample'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: generateItems(),
          ),
        ),
      ),
    );
  }
}
