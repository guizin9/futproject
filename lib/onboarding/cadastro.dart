import 'package:flutter/material.dart';
import 'package:futproject/onboarding/Widgets/Input_widget.dart';
import 'package:futproject/onboarding/cadastro02.dart';
import 'Widgets/container.dart';
import 'Widgets/imgFundo_widgets.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
              children: const [
                InputWidget(hintText: 'Insira seu nome'),
                InputWidget(hintText: 'Insira seu e-mail'),
              ],
            ),
            btn_text: 'Avançar',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CadastroDois(),
                ),
              );
            },
            txtTitulo: 'Faça seu Cadastro',
          ),
        ],
      ),
    );
  }
}
