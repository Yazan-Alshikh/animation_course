import 'package:flutter/material.dart';

class AnimationDirectionalPositioned extends StatefulWidget {
  const AnimationDirectionalPositioned({Key? key}) : super(key: key);

  @override
  State<AnimationDirectionalPositioned> createState() =>
      _AnimationDirectionalPositionedState();
}

class _AnimationDirectionalPositionedState
    extends State<AnimationDirectionalPositioned>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(250, 250, 0, 0),
    ).animate(_controller);
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
        title: const Text("Animation Directional Transition"),
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => PositionedDirectional(
                start: _animation.value.left,
                top: _animation.value.top,
                bottom: _animation.value.bottom,
                end: _animation.value.right,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _start, child: const Icon(Icons.start)),
    );
  }
}
