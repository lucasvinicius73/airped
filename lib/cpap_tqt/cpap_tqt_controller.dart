import 'package:flutter/material.dart';

class CpapTqtController extends ChangeNotifier {
  String tamCanulaCPAP = '0';
  String canulaTQT = '0';

  calcularTamCanulaCPAP(double pesoReal, String idadeText) {
    double idade = double.parse(idadeText);
    tamCanulaCPAP = '0';

    if (pesoReal < 700) {
      tamCanulaCPAP = '00';
    } else if (pesoReal >= 700 && pesoReal < 1000) {
      tamCanulaCPAP = '0';
    } else if (pesoReal >= 1000 && pesoReal < 1250) {
      tamCanulaCPAP = '1';
    } else if (pesoReal >= 1250 && pesoReal < 2000) {
      tamCanulaCPAP = '2';
    } else if (pesoReal >= 2000 && pesoReal < 3000) {
      tamCanulaCPAP = '3';
    }
    if (pesoReal >= 3000) {
      tamCanulaCPAP = '4';
    }
    if (pesoReal >= 3000 && idade >= 1 && idade < 2) {
      tamCanulaCPAP = '5';
    } else if (idade >= 3) {
      tamCanulaCPAP = 'Inadequado para\nessa idade';
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
      canulaTQT = '${((idade + 16) / 4).toStringAsFixed(1)} mm';
    }
    notifyListeners();
  }

  reset() {
    tamCanulaCPAP = '0';
    canulaTQT = '0';
    notifyListeners();
  }
}
