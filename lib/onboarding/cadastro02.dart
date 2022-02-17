import 'package:flutter/material.dart';
import 'package:futproject/onboarding/Widgets/Input_widget.dart';
import 'package:futproject/onboarding/posicao.dart';
import 'Widgets/container.dart';
import 'Widgets/imgFundo_widgets.dart';

class CadastroDois extends StatefulWidget {
  const CadastroDois({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<CadastroDois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('FutProject'),
      ),
      body: Stack(
        children: [
          const ImgFundoWidget(),
          ContainerWidget(
            widget: Column(
              children: [
                InputWidget(hintText: 'Crie sua senha'),
                InputWidget(hintText: 'Repita sua senha'),
              ],
            ),
            btn_text: 'Cadastrar',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Posicao(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
