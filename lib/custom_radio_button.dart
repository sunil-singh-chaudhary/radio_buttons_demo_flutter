import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model_radio.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  List<Model> listofData = [];
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    widget.listofData = [
      Model(label: 'Credit Card', value: 'credit'),
      Model(label: 'Debit Card', value: 'debit'),
      Model(label: 'Cash', value: 'cash')
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomRadioButton(
            elevation: 0,
            absoluteZeroSpacing: true,
            unSelectedColor: Theme.of(context).canvasColor,
            buttonLables: widget.listofData.map((e) => e.label).toList(),
            buttonValues: widget.listofData.map((e) => e.value).toList(),
            buttonTextStyle: const ButtonTextStyle(
                selectedColor: Colors.white,
                unSelectedColor: Colors.black,
                textStyle: TextStyle(fontSize: 16)),
            radioButtonValue: (value) {
              print(value);
            },
            selectedColor: Theme.of(context).highlightColor,
          ),
        ],
      ),
    );
  }
}
