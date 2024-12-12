import 'package:flutter/cupertino.dart';

class CalculadoraController extends ChangeNotifier {
  TextEditingController idade = TextEditingController(text: '');
  TextEditingController altura = TextEditingController();
  TextEditingController pesoReal = TextEditingController();

  List sexos = ['Masculino', 'Feminino'];
  String sexo = 'Masculino';

  bool isYear = true;
  bool showSuffixText = true;

  double pesoIdeal = 0;

  bool isNotEmpty() {
    if (idade.text != '' && altura.text != '') {
      return true;
    }
    return false;
  }

  changeAge() {
    isYear = !isYear;
    notifyListeners();
  }

  changeDropDown(String? value) {
    sexo = value!;
    notifyListeners();
  }

  handleTextChanged() {
    showSuffixText = idade.text.isEmpty;
    notifyListeners();
  }

  reset() {
    idade.text = '';
    altura.text = '';
    pesoReal.text = '';
    pesoIdeal = 0;
    notifyListeners();
  }

  calcularPesoIdeal(String idadeText, String alturaText, String gender) {
    double idade = double.parse(idadeText);
    double altura = double.parse(alturaText);
    double proximatedKey = 0;
    if (idade < 3) {
      proximatedKey = weight0to3Map.keys
          .reduce((a, b) => (altura - a).abs() < (altura - b).abs() ? a : b);
      pesoIdeal = weight0to3Map[proximatedKey]![gender];
    } else {
      proximatedKey = weight3to18Map.keys
          .reduce((a, b) => (altura - a).abs() < (altura - b).abs() ? a : b);
      pesoIdeal = weight3to18Map[proximatedKey]![gender];
    }
    notifyListeners();
  }

  Map<double, Map> weight0to3Map = {
    45.00: {"Masculino": 2.29, "Feminino": 2.31},
    45.50: {"Masculino": 2.39, "Feminino": 2.40},
    46.50: {"Masculino": 2.59, "Feminino": 2.61},
    47.50: {"Masculino": 2.80, "Feminino": 2.82},
    48.50: {"Masculino": 3.02, "Feminino": 3.04},
    49.50: {"Masculino": 3.25, "Feminino": 3.26},
    50.50: {"Masculino": 3.48, "Feminino": 3.49},
    51.50: {"Masculino": 3.72, "Feminino": 3.72},
    52.50: {"Masculino": 3.96, "Feminino": 3.96},
    53.50: {"Masculino": 4.21, "Feminino": 4.20},
    54.50: {"Masculino": 4.47, "Feminino": 4.45},
    55.50: {"Masculino": 4.72, "Feminino": 4.69},
    56.50: {"Masculino": 4.98, "Feminino": 4.94},
    57.50: {"Masculino": 5.24, "Feminino": 5.19},
    58.50: {"Masculino": 5.50, "Feminino": 5.44},
    59.50: {"Masculino": 5.76, "Feminino": 5.70},
    60.50: {"Masculino": 6.02, "Feminino": 5.95},
    61.50: {"Masculino": 6.28, "Feminino": 6.20},
    62.50: {"Masculino": 6.54, "Feminino": 6.45},
    63.50: {"Masculino": 6.79, "Feminino": 6.70},
    64.50: {"Masculino": 7.05, "Feminino": 6.95},
    65.50: {"Masculino": 7.30, "Feminino": 7.20},
    66.50: {"Masculino": 7.56, "Feminino": 7.44},
    67.50: {"Masculino": 7.81, "Feminino": 7.69},
    68.50: {"Masculino": 8.06, "Feminino": 7.93},
    69.50: {"Masculino": 8.30, "Feminino": 8.17},
    70.50: {"Masculino": 8.55, "Feminino": 8.41},
    71.50: {"Masculino": 8.79, "Feminino": 8.64},
    72.50: {"Masculino": 9.03, "Feminino": 8.88},
    73.50: {"Masculino": 9.27, "Feminino": 9.11},
    74.50: {"Masculino": 9.51, "Feminino": 9.34},
    75.50: {"Masculino": 9.74, "Feminino": 9.57},
    76.50: {"Masculino": 9.97, "Feminino": 9.79},
    77.50: {"Masculino": 10.21, "Feminino": 10.02},
    78.50: {"Masculino": 10.43, "Feminino": 10.24},
    79.50: {"Masculino": 10.66, "Feminino": 10.47},
    80.50: {"Masculino": 10.89, "Feminino": 10.69},
    81.50: {"Masculino": 11.12, "Feminino": 10.91},
    82.50: {"Masculino": 11.34, "Feminino": 11.13},
    83.50: {"Masculino": 11.57, "Feminino": 11.35},
    84.50: {"Masculino": 11.79, "Feminino": 11.57},
    85.50: {"Masculino": 12.02, "Feminino": 11.80},
    86.50: {"Masculino": 12.24, "Feminino": 12.02},
    87.50: {"Masculino": 12.47, "Feminino": 12.24},
    88.50: {"Masculino": 12.70, "Feminino": 12.46},
    89.50: {"Masculino": 12.92, "Feminino": 12.69},
    90.50: {"Masculino": 13.16, "Feminino": 12.91},
    91.50: {"Masculino": 13.39, "Feminino": 13.14},
    92.50: {"Masculino": 13.62, "Feminino": 13.37},
    93.50: {"Masculino": 13.86, "Feminino": 13.61},
    94.50: {"Masculino": 14.10, "Feminino": 13.84},
    95.50: {"Masculino": 14.34, "Feminino": 14.08},
    96.50: {"Masculino": 14.59, "Feminino": 14.33},
    97.50: {"Masculino": 14.84, "Feminino": 14.58},
    98.50: {"Masculino": 15.10, "Feminino": 14.83},
    99.50: {"Masculino": 15.35, "Feminino": 15.09},
    100.50: {"Masculino": 15.62, "Feminino": 15.36},
    101.50: {"Masculino": 15.89, "Feminino": 15.63},
    102.50: {"Masculino": 16.16, "Feminino": 15.91},
    103.50: {"Masculino": 16.43, "Feminino": 16.19},
  };

  Map<double, Map> weight3to18Map = {
    80: {"Masculino": 10.53, "Feminino": 10.34},
    82: {"Masculino": 11.19, "Feminino": 10.98},
    84: {"Masculino": 12.09, "Feminino": 11.86},
    88: {"Masculino": 12.54, "Feminino": 12.31},
    90: {"Masculino": 13.20, "Feminino": 12.90},
    92: {"Masculino": 13.60, "Feminino": 13.30},
    94: {"Masculino": 14.00, "Feminino": 13.80},
    96: {"Masculino": 14.40, "Feminino": 13.80},
    98: {"Masculino": 14.90, "Feminino": 14.20},
    100: {"Masculino": 15.50, "Feminino": 14.90},
    102: {"Masculino": 16.00, "Feminino": 15.40},
    104: {"Masculino": 16.70, "Feminino": 16.00},
    106: {"Masculino": 17.20, "Feminino": 16.60},
    108: {"Masculino": 17.90, "Feminino": 17.30},
    110: {"Masculino": 18.70, "Feminino": 17.80},
    112: {"Masculino": 19.20, "Feminino": 18.60},
    114: {"Masculino": 20.00, "Feminino": 19.20},
    116: {"Masculino": 20.80, "Feminino": 19.70},
    118: {"Masculino": 21.40, "Feminino": 20.50},
    120: {"Masculino": 22.20, "Feminino": 21.20},
    122: {"Masculino": 23.00, "Feminino": 22.00},
    124: {"Masculino": 23.80, "Feminino": 22.90},
    126: {"Masculino": 24.60, "Feminino": 23.60},
    128: {"Masculino": 25.50, "Feminino": 24.50},
    130: {"Masculino": 26.40, "Feminino": 25.50},
    132: {"Masculino": 27.40, "Feminino": 26.80},
    134: {"Masculino": 28.40, "Feminino": 28.00},
    136: {"Masculino": 29.80, "Feminino": 29.40},
    138: {"Masculino": 31.20, "Feminino": 31.00},
    140: {"Masculino": 32.70, "Feminino": 32.40},
    142: {"Masculino": 34.30, "Feminino": 34.10},
    144: {"Masculino": 35.70, "Feminino": 35.60},
    146: {"Masculino": 37.50, "Feminino": 37.00},
    148: {"Masculino": 39.10, "Feminino": 38.10},
    150: {"Masculino": 40.70, "Feminino": 39.20},
    152: {"Masculino": 42.30, "Feminino": 40.70},
    154: {"Masculino": 43.60, "Feminino": 41.80},
    156: {"Masculino": 45.40, "Feminino": 43.30},
    158: {"Masculino": 46.70, "Feminino": 44.70},
    160: {"Masculino": 48.10, "Feminino": 46.00},
    162: {"Masculino": 49.40, "Feminino": 48.10},
    164: {"Masculino": 50.80, "Feminino": 51.40},
    166: {"Masculino": 63.80, "Feminino": 59.30},
    168: {"Masculino": 65.64, "Feminino": 61.14},
    170: {"Masculino": 67.48, "Feminino": 62.98},
    172: {"Masculino": 69.32, "Feminino": 64.82},
    174: {"Masculino": 71.60, "Feminino": 66.66},
    176: {"Masculino": 73.00, "Feminino": 68.50},
    178: {"Masculino": 74.84, "Feminino": 70.34},
    180: {"Masculino": 76.68, "Feminino": 72.18},
  };
}
