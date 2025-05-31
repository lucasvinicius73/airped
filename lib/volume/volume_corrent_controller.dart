import 'package:flutter/material.dart';

class VolumeCorrenteController extends ChangeNotifier {
  String frequencia = '';
  String vc4 = '';
  String vc5 = '';
  String vc6 = '';
  String vc7 = '';
  String vc8 = '';
  // Obtém os valores dos campos de entrada

  calcularFrequencia(String idadeText, String alturaText) {
    double idade = double.parse(idadeText);
    if (idade < 1) {
      frequencia = '30-60 ipm';
    } else if (idade <= 3) {
      frequencia = '24-40 ipm';
    } else if (idade <= 5) {
      frequencia = '22 - 34 ipm';
    } else if (idade <= 12) {
      frequencia = '18 - 30 ipm';
    } else if (idade <= 18) {
      frequencia = '12 - 16 ipm';
    }
    notifyListeners();
  }



  calcularVolumeCorrente(double pesoIdeal) {
    // Calcula o volume corrente
    vc4 = (pesoIdeal * 4).toStringAsFixed(2);

    vc5 = (pesoIdeal * 5).toStringAsFixed(2);

    vc6 = (pesoIdeal * 6).toStringAsFixed(2);

    vc7 = (pesoIdeal * 7).toStringAsFixed(2);

    vc8 = (pesoIdeal * 8).toStringAsFixed(2);
    notifyListeners();
  }

  reset() {
    vc4 = '';

    vc5 = '';

    vc6 = '';

    vc7 = '';

    vc8 = '';
    frequencia = '';
    notifyListeners();
  }
}
