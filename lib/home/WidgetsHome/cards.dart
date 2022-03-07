import 'package:flutter/material.dart';

class CardsHome extends StatelessWidget {
  const CardsHome({
    Key? key,
    required this.inconeCard,
    required this.txtCard,
    required this.btnCards,
  }) : super(key: key);
  final String inconeCard;
  final String txtCard;
  final void Function() btnCards;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 150,
            width: 150,
            child: GestureDetector(
              onTap: btnCards,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        inconeCard,
                        width: 90,
                      ),
                    ),
                    Text(txtCard),
                  ],
                ),
                color: Color.fromARGB(64, 153, 0, 180),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
