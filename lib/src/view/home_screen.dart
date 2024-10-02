import 'package:calculadora/src/components/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/display.dart';
import '../provider/display_provider.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
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
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('√');
                  },
                ),
                MyButton(
                  text: '±',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.toggleSign();
                  },
                ),
                MyButton(
                  text: '%',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('%');
                  },
                ),
                MyButton(
                  text: 'x',
                  textColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    displayProvider.addText('x');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: '7',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('7');
                  },
                ),
                MyButton(
                  text: '8',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('8');
                  },
                ),
                MyButton(
                  text: '9',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('9');
                  },
                ),
                MyButton(
                  text: '÷',
                  textColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    displayProvider.addText('÷');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: '4',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('4');
                  },
                ),
                MyButton(
                  text: '5',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('5');
                  },
                ),
                MyButton(
                  text: '6',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('6');
                  },
                ),
                MyButton(
                  text: '-',
                  textColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    displayProvider.addText('-');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: '1',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('1');
                  },
                ),
                MyButton(
                  text: '2',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('2');
                  },
                ),
                MyButton(
                  text: '3',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('3');
                  },
                ),
                MyButton(
                  text: '+',
                  textColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    displayProvider.addText('+');
                  },
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: 'AC',
                  textColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    displayProvider.clearDisplay();
                  },
                ),
                MyButton(
                  text: '0',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText('0');
                  },
                ),
                MyButton(
                  text: ',',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  onPressed: () {
                    displayProvider.addText(',');
                  },
                ),
                MyButton(
                  text: '=',
                  textColor: Colors.white,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    displayProvider.calculteResult();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
