import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.page, required this.text, Key? key})
      : super(key: key);
  final String text;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ));
        },
        child: Text(text));
  }
}
