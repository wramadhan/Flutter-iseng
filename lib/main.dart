import 'package:flutter/material.dart';
import 'package:mainan/gradien_container.dart';

List<Color> gradientColors = const [
  Color.fromARGB(255, 6, 0, 97),
  Color.fromARGB(255, 39, 12, 135)
];

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // appBar: AppBar(title: const Text('Aplikasi Hello World')),
          appBar: AppBar(
              title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Citayam'),
              Text('Selalu'),
              TextButton(onPressed: null, child: Text('Dihati'))
            ],
          )),
          body: GradientContainer.purple(
            gradientColors: gradientColors,
          )),
    ),
  );
}
