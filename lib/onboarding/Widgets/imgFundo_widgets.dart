import 'package:flutter/material.dart';

class ImgFundoWidget extends StatelessWidget {
  const ImgFundoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/imagens/img_ney.jpeg',
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
