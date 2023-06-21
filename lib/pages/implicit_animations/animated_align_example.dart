import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  int _jerryAlign = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align Example"),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAlign(_jerryAlign + 1),
            duration: const Duration(milliseconds: 200),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/jerry.png"),
            ),
          ),
          AnimatedAlign(
            alignment: getNextAlign(_jerryAlign),
            duration: const Duration(milliseconds: 200),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/tom.png"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _jerryAlign += 1;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }

  Alignment getNextAlign(int align) {
    switch (align) {
      case 0:
        return Alignment.center;
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        _jerryAlign = 0;
        return Alignment.topLeft;
    }
  }
}
