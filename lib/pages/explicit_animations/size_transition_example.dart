import 'package:flutter/material.dart';

class SizeTransitionExample extends StatefulWidget {
  const SizeTransitionExample({Key? key}) : super(key: key);

  @override
  State<SizeTransitionExample> createState() => _SizeTransitionExampleState();
}

class _SizeTransitionExampleState extends State<SizeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _start() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size Transition Example"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _start,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: SizeTransition(
                  sizeFactor: _animation,
                  child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.amber,
                      child: Image.asset("assets/dog.png"))),
            ),
          ),
        ),
      ),
    );
  }
}
