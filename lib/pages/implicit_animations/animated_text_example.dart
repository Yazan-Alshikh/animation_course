import 'package:flutter/material.dart';

class AnimatedTextExample extends StatefulWidget {
  const AnimatedTextExample({Key? key}) : super(key: key);

  @override
  State<AnimatedTextExample> createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample> {
  Color _color = Colors.black;
  double _size = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              style: TextStyle(
                color: _color,
                fontSize: _size,
              ),
              duration: const Duration(milliseconds: 500),
              child: const Text("Animated Text Example")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.deepOrange;
                      _size = 24;
                    });
                  },
                  icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.black;
                      _size = 14;
                    });
                  },
                  icon: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    );
  }
}
