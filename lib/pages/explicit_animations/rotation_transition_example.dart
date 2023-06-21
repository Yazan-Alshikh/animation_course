import 'package:flutter/material.dart';

class RotationTransitionExample extends StatefulWidget {
  const RotationTransitionExample({Key? key}) : super(key: key);

  @override
  State<RotationTransitionExample> createState() =>
      _RotationTransitionExampleState();
}

class _RotationTransitionExampleState extends State<RotationTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 7,
        ));
    _animation = Tween<double>(begin: 0, end: 7).animate(_controller);
    super.initState();
  }

  _start() {
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation Transition Example"),
      ),
      body: Center(
        child: RotationTransition(
            turns: _animation,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(
                child: Image.asset("assets/dog.png"),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _start, child: const Icon(Icons.start)),
    );
  }
}
