import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();
    setState(() {
      _width = random.nextInt(200).toDouble() + 20;
      _height = random.nextInt(200).toDouble() + 20;
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Screen')),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: _borderRadius,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () => changeShape(),
      ),
    );
  }
}
