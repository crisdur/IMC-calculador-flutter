import 'package:flutter/material.dart';
import 'package:imc/constants/constantes.dart';

class DerBar extends StatelessWidget {
  final double anchobar;

  const DerBar({super.key, required this.anchobar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 25,
            width: anchobar,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: colorSecundario))
      ],
    );
  }
}
