import 'package:flutter/material.dart';

class CpapTqtController extends ChangeNotifier {
  String tamCanulaCPAP = '';
  String canulaTQT = '';

  calcularTamCanulaCPAP(String pesoText, String idadeText) {
    double peso = double.parse(pesoText);
    double idade = double.parse(idadeText);
    tamCanulaCPAP = '0';

    if (peso >= 1000 && peso <= 1250) {
      tamCanulaCPAP = '1';
    }
    if (peso > 1250 && peso <= 2000) {
      tamCanulaCPAP = '2';
    }
    if (peso > 2000 && peso <= 3000) {
      tamCanulaCPAP = '3';
    }
    if (peso > 3000 && idade < 1) {
      tamCanulaCPAP = '4';
    }
    if (peso > 3000 && idade >= 1 && idade <= 2) {
      tamCanulaCPAP = '5';
    }
    notifyListeners();
  }

  calcularTamTQT(String idadeText, String idadeMesText){
    

  }
}
