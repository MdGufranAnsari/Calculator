import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var result = '';
  List<String> buttons = [
    'AC',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],

      // appBar: AppBar(title: Text('Calculator'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(8, 45, 0, 0),
                color: Colors.deepPurple[100],
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // top & bottom
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.scaleDown, // 👈 prevents overflow
                            child: Text(
                              userInput,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 150),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: FittedBox(
                              alignment: Alignment.centerRight,
                              fit: BoxFit.scaleDown, // 👈 prevents overflow
                              child: Text(
                                result,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                final buttonText = buttons[index];
                if (index == 0) {
                  return Buttons(
                    buttonText: buttonText,
                    textColor: Colors.white,
                    buttonTapped: () {
                      setState(() {
                        userInput = '';
                        result = '';
                      });
                    },
                    buttonColor: Colors.green,
                  );
                } else if (index == 1) {
                  return Buttons(
                    buttonText: buttonText,
                    textColor: Colors.white,
                    buttonTapped: () {
                      setState(() {
                        if (userInput.isNotEmpty) {
                          userInput = userInput.substring(
                            0,
                            userInput.length - 1,
                          );
                        }
                      });
                    },
                    buttonColor: Colors.red,
                  );
                } else {
                  return isOperators(buttonText)
                      ? Buttons(
                          buttonText: buttonText,
                          textColor: Colors.white,
                          buttonTapped: () {
                            setState(() {
                              if (buttonText == '=') {
                                try {
                                  Parser p = Parser();
                                  Expression exp = p.parse(userInput);

                                  ContextModel cm = ContextModel();
                                  double eval = exp.evaluate(
                                    EvaluationType.REAL,
                                    cm,
                                  );

                                  if (eval % 1 == 0) {
                                    result = eval.toInt().toString();
                                  } else {
                                    result = eval.toStringAsFixed(
                                      5,
                                    ); // 👈 only 4 decimal places
                                  }
                                } catch (e) {
                                  result = 'Error';
                                }
                              } else if (userInput.endsWith('+') ||
                                  userInput.endsWith('-') ||
                                  userInput.endsWith('*') ||
                                  userInput.endsWith('%') ||
                                  userInput.endsWith('/')) {
                                userInput =
                                    userInput.substring(
                                      0,
                                      userInput.length - 1,
                                    ) +
                                    buttonText;
                              } else {
                                userInput = userInput + buttonText;
                              }
                            });
                          },
                          buttonColor: Colors.deepPurple,
                        )
                      : Buttons(
                          buttonText: buttonText,
                          textColor: Colors.black,
                          buttonTapped: () {
                            setState(() {
                              userInput = userInput + buttonText;
                            });
                          },
                          buttonColor: Colors.white,
                        );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

bool isOperators(String buttons) {
  return
  // buttons == 'AC' ||
  //     buttons == 'DEL' ||
  buttons == '+' ||
      buttons == '/' ||
      buttons == '-' ||
      buttons == '%' ||
      buttons == '=' ||
      buttons == '*';
}
