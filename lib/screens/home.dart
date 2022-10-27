import 'dart:math';
import 'package:flutter/material.dart';
import 'package:imc/constants/constantes.dart';
import 'package:imc/widgets/iz_bart.dart';
import 'package:imc/widgets/de_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controladoralt = TextEditingController();
  final TextEditingController _controladorpeso = TextEditingController();
  double _imc = 0;
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora del IMC',
          style: TextStyle(color: colorSecundario, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: colorPrimario,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: _controladorpeso,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: colorSecundario),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Peso',
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: _controladoralt,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: colorSecundario),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Altura',
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double a = double.parse(_controladoralt.text);
                double p = double.parse(_controladorpeso.text);
                setState(() {
                  _imc = p / pow(a, 2);

                  if (_imc > 25) {
                    _resultado = 'Sobrepeso';
                  } else if ((_imc >= 18.5 && _imc <= 25)) {
                    _resultado = 'Tienes un peso normal';
                  } else {
                    _resultado = 'Estás debajo del peso normal';
                  }
                  ;
                });
              },
              child: Container(
                  child: Text(
                'Calcular',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: colorSecundario),
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              _imc.toStringAsFixed(2),
              style: TextStyle(fontSize: 90, color: colorSecundario),
            ),
            const SizedBox(height: 30),
            Visibility(
              visible: _resultado.isNotEmpty,
              child: Container(
                  child: Text(
                _resultado,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: colorSecundario),
              )),
            ),
            const SizedBox(height: 20),
            const DerBar(anchobar: 30),
            const SizedBox(height: 20),
            const DerBar(anchobar: 50),
            const SizedBox(height: 20),
            const DerBar(anchobar: 30),
            const SizedBox(height: 20),
            const IzqBar(anchobar: 30),
            const SizedBox(height: 50),
            const IzqBar(anchobar: 30),
          ],
        ),
      ),
    );
  }
}
