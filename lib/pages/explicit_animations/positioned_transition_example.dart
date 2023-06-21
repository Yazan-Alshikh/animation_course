import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> animation;
  late Animation<RelativeRect> animation2;
  late Animation<RelativeRect> animation3;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(250, 250, 0, 0))
        .animate(_controller);
    animation2 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(_controller);
    animation3 = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Positioned Transition Example"),
      ),
      body: Stack(
        children: [
          PositionedTransition(
              rect: animation3,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blueGrey,
                child: Image.asset("assets/dog.png"),
              )),
          PositionedTransition(
              rect: animation2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
                child: Image.asset("assets/tom.png"),
              )),
          PositionedTransition(
              rect: animation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Image.asset("assets/jerry.png"),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      _controller.forward();
                    },
                    icon: const Icon(Icons.start)),
                IconButton(
                    onPressed: () {
                      _controller.reverse();
                    },
                    icon: const Icon(Icons.close)),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
