import 'package:flutter/material.dart';
import 'package:imc/constants/constantes.dart';

class IzqBar extends StatelessWidget {
  final double anchobar;

  const IzqBar({super.key, required this.anchobar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 25,
            width: anchobar,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: colorSecundario))
      ],
    );
  }
}
