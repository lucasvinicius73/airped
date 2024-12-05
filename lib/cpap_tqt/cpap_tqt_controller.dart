import 'package:flutter/material.dart';

class CpapTqtController extends ChangeNotifier {
  String tamCanulaCPAP = '';
  String canulaTQT = '';

  calcularTamCanulaCPAP(double pesoIdeal, String idadeText) {
    double idade = double.parse(idadeText);
    tamCanulaCPAP = '0';

    if (pesoIdeal >= 1000 && pesoIdeal <= 1250) {
      tamCanulaCPAP = '1';
    }
    if (pesoIdeal > 1250 && pesoIdeal <= 2000) {
      tamCanulaCPAP = '2';
    }
    if (pesoIdeal > 2000 && pesoIdeal <= 3000) {
      tamCanulaCPAP = '3';
    }
    if (pesoIdeal > 3000 && idade < 1) {
      tamCanulaCPAP = '4';
    }
    if (pesoIdeal > 3000 && idade >= 1 && idade <= 2) {
      tamCanulaCPAP = '5';
    }
    notifyListeners();
  }

  calcularTamTQT(String idadeText) {
    double idade = double.parse(idadeText);
    if (idade < 0.5) {
      canulaTQT = '3.0 mm - 3.5 mm';
    }
    if (idade >= 0.5 && idade < 1) {
      canulaTQT = '3.5 mm - 4.0 mm';
    }
    if (idade >= 1 && idade < 2) {
      canulaTQT = '4.0 mm - 4.5 mm';
    }
    if (idade >= 2) {
      canulaTQT = '${idade + 16.4} mm';
    }
    notifyListeners();
  }

  reset() {
    tamCanulaCPAP = '';
    canulaTQT = '';
    notifyListeners();
  }
}
