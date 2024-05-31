import 'package:flutter/cupertino.dart';

class TotController extends ChangeNotifier {
  String escolhaTOTcomCUFF = '';
  String escolharTOTsemCUFF = '';

  String pontoFixacaoComCUFF = '';
  String pontoFixacaoSemCUFF = '';

  calcularEscolhaTOTcomCUFF(
      String idadeText, String pesoText, String alturaText) {
    double idade = double.parse(idadeText);

    if (idade < 2) {
      escolhaTOTcomCUFF = ((idade / 4) + 3).toStringAsFixed(2);
    } else if (idade >= 2) {
      escolhaTOTcomCUFF = ((idade / 4) + 3.5).toStringAsFixed(2);
    }
    calcularPontoFixacaoComCUFF(escolhaTOTcomCUFF);
    notifyListeners();
  }

  calcularEscolhaTOTsemCUFF(
      String idadeText, String pesoText, String alturaText) {
    double idade = double.parse(idadeText);
    escolharTOTsemCUFF = ((idade / 4) + 4).toStringAsFixed(2);
    calcularPontoFixacaoSemCUFF(escolharTOTsemCUFF);
    notifyListeners();
  }

  calcularPontoFixacaoComCUFF(String text) {
    pontoFixacaoComCUFF = (double.parse(text) * 3).toStringAsFixed(2);
  }

  calcularPontoFixacaoSemCUFF(String text) {
    pontoFixacaoSemCUFF = (double.parse(text) * 3).toStringAsFixed(2);
  }

  reset() {
    escolhaTOTcomCUFF = '';
    escolharTOTsemCUFF = '';
    pontoFixacaoComCUFF = '';
    pontoFixacaoSemCUFF = '';
    notifyListeners();
  }
}
