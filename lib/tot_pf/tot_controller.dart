import 'package:flutter/cupertino.dart';

class TotController extends ChangeNotifier {
  String escolhaTOTcomCUFF = '';
  String escolharTOTsemCUFF = '';

  String pontoFixacaoComCUFF = '';
  String pontoFixacaoSemCUFF = '';

  calcularEscolhaTOTcomCUFF(
      String idadeText, String pesoText, String alturaText) {
    double idade = double.parse(idadeText);

    if (idade <= 2) {
      escolhaTOTcomCUFF = '${(idade / 4) + 3}';
    } else if (idade > 2) {
      escolhaTOTcomCUFF = '${(idade / 4) + 3.5}';
    }
    notifyListeners();
  }

  calcularEscolhaTOTsemCUFF(
      String idadeText, String pesoText, String alturaText) {
    double idade = double.parse(idadeText);
    escolharTOTsemCUFF = '${(idade / 4) + 4}';
    notifyListeners();
  }

  calcularPontoFixacaoComCUFF(
      String idadeText, String pesoText, String alturaText) {}

  reset() {
    escolhaTOTcomCUFF = '';
    escolharTOTsemCUFF = '';
    pontoFixacaoComCUFF = '';
    pontoFixacaoSemCUFF = '';
    notifyListeners();
  }
}
