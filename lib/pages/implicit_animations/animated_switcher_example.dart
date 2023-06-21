import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Switcher Example"),
      ),
      body: Center(
        child: AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            switchInCurve: Curves.bounceIn,
            switchOutCurve: Curves.bounceOut,
            child: _isSwitch
                ? const CircularProgressIndicator()
                : SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isSwitch = true;
                          });
                        },
                        child: const Text("login now")),
                  )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isSwitch = false;
          });
        },
        child: const Icon(Icons.switch_left_outlined),
      ),
    );
  }
}
