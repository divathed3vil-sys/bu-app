import 'package:flutter/material.dart';

void main() {
  runApp(const BuApp());
}

class BuApp extends StatelessWidget {
  const BuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('BU Core Engine v1.0'))),
    );
  }
}
