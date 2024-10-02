import 'package:calculadora/src/components/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/display.dart';
import '../provider/display_provider.dart';
import '../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String displayText(String text) {
    return MyDisplay(displayText: text).toString();
  }

  @override
  Widget build(BuildContext context) {
    final displayProvider = Provider.of<DisplayProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    final bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    final Color primaryButtonColor =
        isDarkMode ? Colors.grey[700]! : Colors.grey;
    final Color secondaryButtonColor =
        isDarkMode ? Colors.orange[400]! : Colors.orange[700]!;
    final Color thirdButtonColor =
        isDarkMode ? Colors.black : Colors.grey[200]!;

    final Color textColor = isDarkMode ? Colors.white : Colors.black;

    final Color backgroundColor = isDarkMode ? Colors.black : Colors.white;

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text('Calculadora Flutter'),
        actions: [
          IconButton(
            icon: Icon(themeProvider.themeMode == ThemeMode.dark
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyDisplay(
                displayText: displayProvider.displayText,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: '√',
                    textColor: textColor,
                    backgroundColor: primaryButtonColor,
                    onPressed: () {
                      displayProvider.calculateSquareRoot();
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '+/-',
                    textColor: textColor,
                    backgroundColor: primaryButtonColor,
                    onPressed: () {
                      displayProvider.toggleSign();
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '%',
                    textColor: textColor,
                    backgroundColor: primaryButtonColor,
                    onPressed: () {
                      displayProvider.addText('%');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: 'x',
                    textColor: textColor,
                    backgroundColor: secondaryButtonColor,
                    onPressed: () {
                      displayProvider.addText('x');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: '7',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('7');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '8',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('8');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '9',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('9');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '÷',
                    textColor: textColor,
                    backgroundColor: secondaryButtonColor,
                    onPressed: () {
                      displayProvider.addText('÷');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: '4',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('4');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '5',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('5');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '6',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('6');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '-',
                    textColor: textColor,
                    backgroundColor: secondaryButtonColor,
                    onPressed: () {
                      displayProvider.addText('-');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: '1',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('1');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '2',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('2');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '3',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('3');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '+',
                    textColor: textColor,
                    backgroundColor: secondaryButtonColor,
                    onPressed: () {
                      displayProvider.addText('+');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: 'AC',
                    textColor: textColor,
                    backgroundColor: secondaryButtonColor,
                    onPressed: () {
                      displayProvider.clearDisplay();
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '0',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText('0');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: ',',
                    textColor: textColor,
                    backgroundColor: thirdButtonColor,
                    onPressed: () {
                      displayProvider.addText(',');
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  MyButton(
                    text: '=',
                    textColor: textColor,
                    backgroundColor: secondaryButtonColor,
                    onPressed: () {
                      displayProvider.calculteResult();
                    },
                  ),
                  SizedBox(width: screenWidth * 0.01),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
