import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class MyDisplay extends StatelessWidget {
  final String displayText;

  const MyDisplay({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    final Color textColor = isDarkMode ? Colors.white : Colors.black;

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    double fontSize;

    if (screenHeight > screenWidth) {
      fontSize = screenWidth * 0.1;
    } else {
      fontSize = screenHeight * 0.08;
    }

    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.2,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          displayText,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
