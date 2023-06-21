import 'package:flutter/material.dart';

class PageMixScaleRotateTransition extends PageRouteBuilder {
  final dynamic page;

  PageMixScaleRotateTransition(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var animation1 = Tween<double>(begin: 0, end: 1.0).animate(
                  CurvedAnimation(
                      parent: animation, curve: Curves.bounceInOut));

              var animation2 = Tween<double>(begin: 0, end: 2.0).animate(
                  CurvedAnimation(parent: animation, curve: Curves.decelerate));

              return ScaleTransition(
                scale: animation1,
                child: RotationTransition(turns: animation2, child: child),
              );
            });
}
