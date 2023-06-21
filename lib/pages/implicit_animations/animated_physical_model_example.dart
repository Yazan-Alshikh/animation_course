import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;

  _toogleElevation() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Physical Model Example")),
      body: Center(
        child: GestureDetector(
          onTap: _toogleElevation,
          child: AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _isPressed ? 50 : 0,
              color: Colors.deepOrange,
              shadowColor: Colors.black,
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.deepOrange,
                child: Image.asset("assets/dog.png"),
              )),
        ),
      ),
    );
  }
}
