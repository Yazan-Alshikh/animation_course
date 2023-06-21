import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Opacity Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: _isVisible ? 1.0 : 0.0,
                child: const Text(
                  "Tom And Jerry",
                  style: TextStyle(fontSize: 44),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1500),
                opacity: _isVisible ? 1.0 : 0.0,
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/jerry.png"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2500),
                opacity: _isVisible ? 1.0 : 0.0,
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/tom.png"))),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(_isVisible ? Icons.visibility_off : Icons.visibility),
      ),
    );
  }
}
