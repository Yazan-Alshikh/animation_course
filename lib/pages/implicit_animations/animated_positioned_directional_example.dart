import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalExample extends StatefulWidget {
  const AnimatedPositionedDirectionalExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedDirectionalExample> createState() =>
      _AnimatedPositionedDirectionalExampleState();
}

class _AnimatedPositionedDirectionalExampleState
    extends State<AnimatedPositionedDirectionalExample> {
  double _start = 0;
  double _top = 0;

  _moveLeft() {
    setState(() {
      _start -= 50;
      if (_start < 0) {
        _start = 0;
      }
    });
  }

  _moveUp() {
    setState(() {
      _top -= 50;
      if (_top < 0) {
        _top = 0;
      }
    });
  }

  _moveRight() {
    setState(() {
      _start += 50;
      if (_start > MediaQuery.of(context).size.width * 0.65) {
        _start = MediaQuery.of(context).size.width * 0.65;
      }
    });
  }

  _moveDown() {
    setState(() {
      _top += 50;
      if (_top > MediaQuery.of(context).size.height * 0.65) {
        _top = MediaQuery.of(context).size.height * 0.65;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned Directional Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
                start: _start,
                top: _top,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: Image.asset("assets/jerry.png"),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: _moveLeft,
                      child: const Icon(Icons.arrow_circle_left_outlined)),
                  ElevatedButton(
                      onPressed: _moveDown,
                      child: const Icon(Icons.arrow_circle_down_outlined)),
                  ElevatedButton(
                      onPressed: _moveUp,
                      child: const Icon(Icons.arrow_circle_up_outlined)),
                  ElevatedButton(
                      onPressed: _moveRight,
                      child: const Icon(Icons.arrow_circle_right_outlined)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
