import 'package:flutter/material.dart';

class DesconfortoController extends ChangeNotifier {
  Map<String, int> retracaoMap = {
    'Não': 0,
    'Intercostal': 1,
    'Intercostal = Esternal': 2,
  };

  Map<String, int> disssociacaoMap = {
    'Não': 0,
    'Moderado ': 1,
    'Severo': 2,
  };
  Map<String, int> batimentoMap = {
    'Não': 0,
    'Leve  ': 1,
    'Severo': 2,
  };
  Map<String, int> sibilosMap = {
    'Não': 0,
    'Durante a ausculta ': 1,
    'Severo': 2,
  };
  Map<String, int> cianoseMap = {
    'Não (>92%)': 0,
    'Durante a ausculta ': 1,
    'Severo': 2,
  };
  Map<String, int> coscienciaMap = {
    'Normal': 0,
    'Deprimido o Inquieto': 1,
    'Letárgico ou altamente inquieto': 2,
  };

  List<int> values = [0, 0, 0, 0, 0, 0];

  List<String> cuidados = [];
  int score = 0;
  String scoreText = '';
  Color color = const Color(0xFF0BC212);

  calcularScore() {
    score =
        values[0] + values[1] + values[2] + values[3] + values[4] + values[5];
    notifyListeners();
  }

  changeDropDown(int variavel, int? value) {
    values[variavel] = value!;
    notifyListeners();
  }

  calcularCuidado() {
    if (score < 4) {
      scoreText = 'Leve';
      color = const Color(0xFF0BC212);
      cuidados = ['O2 (<5l/min)', 'CPAP'];
    }
    if (score >= 4 && score <= 6) {
      cuidados = ['O2 (<5l/min)', 'CNAF', 'BIPAP'];
      scoreText = 'Moderado';
      color = Colors.orange;
    }
    if (score > 6) {
      cuidados = ['BIPAP*', 'VMI'];
      scoreText = 'Severo';
      color = const Color(0xFFFF0000);
    }
    notifyListeners();
  }
}