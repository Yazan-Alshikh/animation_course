import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  Color _color = Colors.grey;
  double _size = 100;
  double _radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _color = Colors.deepOrange;
              _size = 150;
              _radius = 14;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _size,
            height: _size,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(_radius)),
            child: Image.asset("assets/jerry.png"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _color = Colors.grey;
            _size = 100;
            _radius = 0;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
