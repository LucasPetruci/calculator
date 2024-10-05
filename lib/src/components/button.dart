import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final void Function()? onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double width, height;
    if (screenHeight > screenWidth) {
      width = screenWidth * 0.2;
      height = screenHeight * 0.1;
    } else {
      width = screenWidth * 0.1;
      height = screenHeight * 0.1;
    }
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.zero,
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: screenWidth * 0.1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
