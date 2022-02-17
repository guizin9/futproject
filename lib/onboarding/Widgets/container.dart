import 'package:flutter/material.dart';

import '../cadastro02.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {Key? key, this.widget, required this.btn_text, this.onPressed})
      : super(key: key);
  final Widget? widget;
  final String btn_text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 140),
      decoration: BoxDecoration(
        color: const Color.fromARGB(209, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  '   Faça seu Cadastro',
                  style: TextStyle(
                      color: Color.fromARGB(255, 116, 0, 131),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: Image.asset('assets/imagens/icone.png'),
                width: 90,
              ),
            ],
          ),
          widget ?? const SizedBox(),
          SizedBox(
            width: 167,
            height: 52,
            child: ElevatedButton(child: Text(btn_text), onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}
