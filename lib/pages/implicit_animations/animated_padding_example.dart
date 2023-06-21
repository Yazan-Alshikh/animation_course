import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  List<String> item = ["tom", "jerry", "dog", "cheese"];
  double _paddingValue = 10.0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding Example"),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(item.length, (index) {
            return AnimatedPadding(
                padding: EdgeInsets.all(_paddingValue),
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 500),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: Image.asset("assets/${item[index]}.png"),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _isExpanded = !_isExpanded;
            _paddingValue = _isExpanded ? 30.0 : 10.0;
          });
        },
        child: Icon(_isExpanded ? Icons.expand : Icons.expand_less),
      ),
    );
  }
}
