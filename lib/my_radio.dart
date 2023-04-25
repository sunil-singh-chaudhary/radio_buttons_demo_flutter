import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'model_radio.dart';

class MyRadioButtonGroup extends StatefulWidget {
  MyRadioButtonGroup({super.key});
  List<Model> listofData = [];
  String selectedvalue = 'Credit Card';
  @override
  State<MyRadioButtonGroup> createState() => _MyRadioButtonGroupState();
}

class _MyRadioButtonGroupState extends State<MyRadioButtonGroup> {
  @override
  void initState() {
    super.initState();
    widget.listofData = [
      Model(label: 'Credit Card', value: 'credit'),
      Model(label: 'Debit Card', value: 'debit'),
      Model(label: 'Cash', value: 'cash')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Radio with API'),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.listofData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: RadioListTile<String>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  selectedTileColor: Colors.green,
                  tileColor: Colors.amber,
                  title: Text(widget.listofData[index].label),
                  value: widget.listofData[index].value,
                  groupValue: widget.selectedvalue,
                  onChanged: (value) {
                    widget.selectedvalue = value as String;
                    setState(() {});
                    print('selected-->$value');
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AboutDialog(
                          applicationIcon: Icon(Icons.abc),
                          children: [
                            Container(
                              child:
                                  Text('You selectd ${widget.selectedvalue}'),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            }));
  }
}
