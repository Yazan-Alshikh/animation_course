import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _start = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned Example"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.transparent,
                    child: Image.asset("assets/cheese.png"),
                  )),
              AnimatedPositioned(
                  left: _start ? 0 : MediaQuery.of(context).size.width * 0.6,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset("assets/jerry.png"),
                  )),
              AnimatedPositioned(
                  top: _start ? 0 : MediaQuery.of(context).size.height * 0.2,
                  left: _start ? 0 : MediaQuery.of(context).size.width * 0.6,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset("assets/dog.png"),
                  )),
              AnimatedPositioned(
                  top: _start ? 0 : MediaQuery.of(context).size.height * 0.7,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.transparent,
                    child: Image.asset("assets/tom.png"),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _start = !_start;
          });
        },
        child: Icon(!_start ? Icons.place : Icons.back_hand),
      ),
    );
  }
}
