import 'package:flutter/material.dart';
import 'package:flutter_animation_course/pages/explicit_animations/animated_builder_example.dart';
import 'package:flutter_animation_course/pages/explicit_animations/animation_directional_positioned.dart';
import 'package:flutter_animation_course/pages/explicit_animations/default_text_style_transition.dart';
import 'package:flutter_animation_course/pages/explicit_animations/fade_transition_example.dart';
import 'package:flutter_animation_course/pages/explicit_animations/positioned_transition_example.dart';
import 'package:flutter_animation_course/pages/explicit_animations/rotation_transition_example.dart';
import 'package:flutter_animation_course/pages/explicit_animations/size_transition_example.dart';
import 'package:flutter_animation_course/pages/explicit_animations/tween_animation_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_align_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_container_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_cross_fade_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_list_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_opacity_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_padding_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_physical_model_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_positioned_directional_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_positioned_example.dart';
import 'package:flutter_animation_course/pages/implicit_animations/animated_switcher_example.dart';
import 'package:flutter_animation_course/widget/custom_button.dart';

import 'pages/explicit_animations/index_stack_example.dart';
import 'pages/implicit_animations/animated_text_example.dart';
import 'pages/more_animation/custom_painter_example.dart';
import 'pages/more_animation/lottie_slider_example.dart';
import 'pages/more_animation/rive_slider_example.dart';
import 'pages/page_transition/page_fade_transition.dart';
import 'pages/page_transition/page_mix_scale_rotate_transition.dart';
import 'pages/page_transition/page_mix_size_fade_transition.dart';
import 'pages/page_transition/page_rotate_transition.dart';
import 'pages/page_transition/page_scale_transition.dart';
import 'pages/page_transition/page_size_transiition.dart';
import 'pages/page_transition/page_slide_transition.dart';
import 'pages/page_transition/page_tow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Animation Course'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            const CustomButton(
                page: AnimatedAlignExample(), text: "Animated Align Example"),
            const CustomButton(
                page: AnimatedContainerExample(),
                text: "Animated Container Example"),
            const CustomButton(
                page: AnimatedTextExample(), text: "Animated Text Example"),
            const CustomButton(
                page: AnimatedOpacityExample(),
                text: "Animated Opacity Example"),
            const CustomButton(
                page: AnimatedPaddingExample(),
                text: "Animated Padding Example"),
            const CustomButton(
                page: AnimatedPhysicalModelExample(),
                text: "Animated Physical Model Example"),
            const CustomButton(
                page: AnimatedPositionedExample(),
                text: "Animated Positioned Example"),
            const CustomButton(
                page: AnimatedPositionedDirectionalExample(),
                text: "Animated Positioned Directional Example"),
            const CustomButton(
                page: AnimatedCrossFadeExample(),
                text: "Animated Cross Fade Example"),
            const CustomButton(
                page: AnimatedSwitcherExample(),
                text: "Animated Switcher Example"),
            const CustomButton(
                page: AnimatedListExample(), text: "Animated List Example"),
            const CustomButton(
                page: PositionedTransitionExample(),
                text: "Positioned Transition Example"),
            const CustomButton(
                page: SizeTransitionExample(), text: "Size Transition Example"),
            const CustomButton(
                page: RotationTransitionExample(),
                text: "Rotation Transition Example"),
            const CustomButton(
                page: AnimatedBuilderExample(),
                text: "Animated Builder Example"),
            const CustomButton(
                page: FadeTransitionExample(), text: "Fade Transition Example"),
            const CustomButton(
                page: AnimationDirectionalPositioned(),
                text: "Animation Directional Positioned"),
            const CustomButton(
                page: TweenAnimationExample(), text: "Tween Animation Example"),
            const CustomButton(
                page: DefaultTextStyleExample(),
                text: "Default Text Style Example"),
            const CustomButton(
                page: IndexedStackTransitionExample(),
                text: "Indexed Stack Transition Example"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageFadeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Fade Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageScaleTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Scale Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageRotateTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Rotate Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSlideTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Slide Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSizeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Size Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageMixSizeFadeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Mix Size Fade Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageMixScaleRotateTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Mix Scale Rotate Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomPainterExample()));
                },
                child: const Text(
                  "Custom Painter Example",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LottieSliderExample()));
                },
                child: const Text(
                  "Lottie Slider Example",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RiveSliderExample()));
                },
                child: const Text(
                  "Rive Slider Example",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
