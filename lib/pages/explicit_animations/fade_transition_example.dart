import 'package:flutter/material.dart';

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({Key? key}) : super(key: key);

  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
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
        title: const Text("Fade Transition Example"),
      ),
      body: Center(
        child: FadeTransition(
            opacity: _animation,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: const Center(
                child: Text("Fade Transition",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _start, child: const Icon(Icons.start)),
    );
  }
}
