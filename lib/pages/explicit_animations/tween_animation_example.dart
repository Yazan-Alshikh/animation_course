import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  double _opacity = 0.0;

  _start() {
    setState(() {
      _opacity = _opacity == 0 ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation Example"),
      ),
      body: Container(
          color: Colors.black12,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: _opacity),
                  duration: const Duration(seconds: 1),
                  builder: (context, double value, child) => Opacity(
                      opacity: value,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.circular(_opacity * value * 36)),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(onPressed: _start, child: const Text("start"))
              ],
            ),
          )),
    );
  }
}
