import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade800,
        ),
        body: const ChangeableImage(),
      ),
    );
  }
}

class ChangeableImage extends StatefulWidget {
  const ChangeableImage({Key? key}) : super(key: key);

  @override
  State<ChangeableImage> createState() => _ChangeableImageState();
}

class _ChangeableImageState extends State<ChangeableImage> {
  int imageId = 1;
  void _changeImage(){
    setState(() {
      imageId = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () { _changeImage(); },
        child: Image.asset('images/ball$imageId.png'),
      ),
    );
  }
}

