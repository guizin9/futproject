import 'package:flutter/material.dart';
import 'package:futproject/onboarding/Widgets/Input_widget.dart';
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
              children: [
                InputWidget(hintText: 'Crie sua senha'),
                InputWidget(hintText: 'Repita sua senha'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
