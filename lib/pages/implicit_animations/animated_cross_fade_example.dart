import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade Example"),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                _isFirst = !_isFirst;
              });
            },
            child: AnimatedCrossFade(
                firstChild: Container(
                  width: 120,
                  height: 120,
                  padding: const EdgeInsets.all(16),
                  color: Colors.blueGrey,
                  child: Image.asset("assets/dog.png"),
                ),
                secondChild: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  color: Colors.deepOrange,
                  child: Image.asset("assets/jerry.png"),
                ),
                crossFadeState: _isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1))),
      ),
    );
  }
}
