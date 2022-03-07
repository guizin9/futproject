import 'package:flutter/material.dart';
import 'package:futproject/onboarding/posicao.dart';

import 'Widgets/Input_widget.dart';
import 'Widgets/container.dart';
import 'Widgets/imgFundo_widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                InputWidget(hintText: 'Crie sua senha'),
                InputWidget(hintText: 'Repita sua senha'),
              ],
            ),
            btn_text: 'Entrar',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Posicao(),
                ),
              );
            },
            txtTitulo: 'Login',
          ),
        ],
      ),
    );
  }
}
