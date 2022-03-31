import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Grid View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Grid(),
    );
  }
}

class Grid extends StatelessWidget {
  final List images = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.jpg",
    "assets/images/4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "MyGaleri",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 21,
        itemBuilder: (context, index) {
          if (index > 2) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(images[index % 4]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(images[index]),
            );
          }
        },
      ),
    );
  }
}
