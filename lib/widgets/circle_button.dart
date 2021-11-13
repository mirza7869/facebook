import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final Color? backgroundColor;
  final Function()? onPressed;
  final Widget icon;
  final double? radius;

  const CircleButton({Key? key, this.backgroundColor, this.onPressed, required this.icon, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        child: IconButton(
        onPressed: onPressed,
          icon: icon,
          splashRadius: radius,
        ),
      ),
    );
  }
}
