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
    final Color backgroundColor = isDarkMode ? Colors.black : Colors.white;
    final Color textColor = isDarkMode ? Colors.white : Colors.black;

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.15,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Text(
        displayText,
        style: TextStyle(
          fontSize: screenWidth * 0.15,
          color: textColor,
        ),
        textAlign: TextAlign.right,
        maxLines: 1,
      ),
    );
  }
}
