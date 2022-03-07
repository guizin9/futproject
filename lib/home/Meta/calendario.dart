// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CalendarioMeta extends StatefulWidget {
  const CalendarioMeta({Key? key}) : super(key: key);

  @override
  _CalendarioMetaState createState() => _CalendarioMetaState();
}

class _CalendarioMetaState extends State<CalendarioMeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutProject'),
      ),
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Acesse o calendário"),
              RaisedButton(
                color: const Color.fromARGB(64, 153, 0, 180),
                child: Container(
                  child: Text("Data treino"),
                ),
                onPressed: () async {
                  var result = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2023));
                  print('$result');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
