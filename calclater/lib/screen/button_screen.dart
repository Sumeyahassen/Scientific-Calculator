import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ButtonScreen(),
  ));
}

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  final List<String> buttons = [
    '1', '2', '3', '4',
    '5', '6', '7', '8',
    '9', '%', '=', '0',
    '+', '-', 'X', '/',
    'x^n', 'sqr', 'sum', 'Del',
    '(', ')', '.', '!'
  ];

  String display = '0';

  void onButtonPressed(String value) {
    setState(() {
      if (value == 'Del') {
        display = '0';
      } else {
        if (display == '0') {
          display = value;
        } else {
          display += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Scientific Calculator"),
        backgroundColor: Colors.pink[200],
      ),
      body: SafeArea( // ✅ prevents overflow issues
        child: Column(
          children: [
            /// DISPLAY AREA
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Text(
                  display,
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            /// BUTTON AREA
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: GridView.builder(
                  shrinkWrap: true, // ✅ FIX for infinite height
                  physics: const NeverScrollableScrollPhysics(), // ✅ FIX
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => onButtonPressed(buttons[index]),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          buttons[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}