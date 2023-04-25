import 'package:flutter/material.dart';
import 'package:radio_buttons_demo_flutter/radio_button_simple.dart';

import 'custom_radio_button.dart';
import 'my_radio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(appBar: AppBar(), body: StartApp()),
      ),
    );
  }
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyRadioButtonGroup(),
                  ));
            },
            child: const Text('My Radio Buttons'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
            child: const Text('Custom Radio Button'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SimpleRadioButton(),
                  ));
            },
            child: const Text('Radio button simple'),
          ),
        ],
      ),
    );
  }
}
