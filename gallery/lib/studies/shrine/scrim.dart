import 'package:flutter/material.dart';

class Scrim extends StatelessWidget {
  const Scrim({this.controller});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final Color color =
            Color(0xFFF0EA).withOpacity(controller.value * 0.87);

        final Widget scrimRectangle = Container(
            width: deviceSize.width, height: deviceSize.height, color: color);

        final bool ignorePointer =
            (controller.status == AnimationStatus.dismissed);
        final bool tapToRevert =
            (controller.status == AnimationStatus.completed);

        if (tapToRevert) {
          return GestureDetector(
            onTap: () {
              controller.reverse();
            },
            child: scrimRectangle,
          );
        } else if (ignorePointer) {
          return IgnorePointer(child: scrimRectangle);
        } else {
          return scrimRectangle;
        }
      },
    );
  }
}
