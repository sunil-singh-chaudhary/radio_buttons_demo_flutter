import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'model_radio.dart';

class SimpleRadioButton extends StatefulWidget {
  SimpleRadioButton({super.key});
  List<Model> listofData = [];

  @override
  State<SimpleRadioButton> createState() => _SimpleRadioButtonState();
}

class _SimpleRadioButtonState extends State<SimpleRadioButton> {
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
          FlutGroupedButtons<String>(
            activeColor: Colors.red,
            checkColor: Colors.white,
            isRadio: true,
            checkShape: StarBorder(),
            titleCheckSpace: 12,
            data: widget.listofData.map((e) => e.label).toList(),
            onChanged: (selectedv) => print(selectedv),
          )
        ],
      ),
    );
  }
}
