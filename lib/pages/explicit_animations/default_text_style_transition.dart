import 'package:flutter/material.dart';

class DefaultTextStyleExample extends StatefulWidget {
  const DefaultTextStyleExample({Key? key}) : super(key: key);

  @override
  State<DefaultTextStyleExample> createState() =>
      _DefaultTextStyleExampleState();
}

class _DefaultTextStyleExampleState extends State<DefaultTextStyleExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final TextStyle _style1 = const TextStyle(
      fontSize: 26, color: Colors.red, fontWeight: FontWeight.bold);
  final TextStyle _style2 = const TextStyle(
      fontSize: 36, color: Colors.blue, fontWeight: FontWeight.normal);

  _start() {
    if (_controller.value == 1) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Text Style Example"),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
            style:
                _animation.drive(TextStyleTween(begin: _style1, end: _style2)),
            child: const Text("Hello World")),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _start, child: const Icon(Icons.start)),
    );
  }
}
