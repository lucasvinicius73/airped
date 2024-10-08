import 'package:flutter/material.dart';

class VolumeCorrenteController extends ChangeNotifier {
  String frequencia = '';
  String vc4 = '';
  String vc5 = '';
  String vc6 = '';
  String vc7 = '';
  String vc8 = '';
  // Obtém os valores dos campos de entrada

  calcularFrequencia(String idadeText, String pesoText, String alturaText) {
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

  calcularVolumeCorrente(String pesoText) {
    double peso = double.parse(pesoText)/1000;
    // Calcula o volume corrente
    vc4 = '${peso * 4}';

    vc5 = '${peso * 5}';

    vc6 = '${peso * 6}';

    vc7 = '${peso * 7}';

    vc8 = '${peso * 8}';
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
