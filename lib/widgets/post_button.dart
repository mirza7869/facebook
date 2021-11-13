import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {

  final Function() onPress;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Size?  buttonSize;

  const PostButton({Key? key, required this.onPress, this.backgroundColor, this.foregroundColor, this.buttonSize, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        foregroundColor: MaterialStateProperty.all(foregroundColor),
        minimumSize: MaterialStateProperty.all(buttonSize),
        elevation: MaterialStateProperty.all(0),

      ),
    );
  }
}
