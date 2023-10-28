import 'package:flutter/material.dart';

class EXColorAnimation extends StatefulWidget {
  @override
  _EXColorAnimationState createState() => _EXColorAnimationState();
}

class _EXColorAnimationState extends State<EXColorAnimation>
    with SingleTickerProviderStateMixin {
  bool buttonToggle = true;
  // late Animation<Color?> animation;
  // late AnimationController controller;
  late AnimationController controller;
  late Animation<Color?> colorAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);
    controller.addListener(() {
      setState(() {});
    });
  }


  void animateColor() {
    if (buttonToggle) {
      controller.forward();
    } else {
      controller.reverse();
    }
    buttonToggle = !buttonToggle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Example animation')),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () => {animateColor()},
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                height: sizeAnimation.value,
                width: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
