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

  calcularPesoIdeal(String idadeText) {
    double idade = double.parse(idadeText);
  }

  calcularVolumeCorrente(String pesoText) {
    double peso = double.parse(pesoText) / 1000;
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

  Map<double, Map> weight0to3Map = {
    45.00: {"male": 2.29, "female": 2.31},
    45.50: {"male": 2.39, "female": 2.40},
    46.50: {"male": 2.59, "female": 2.61},
    47.50: {"male": 2.80, "female": 2.82},
    48.50: {"male": 3.02, "female": 3.04},
    49.50: {"male": 3.25, "female": 3.26},
    50.50: {"male": 3.48, "female": 3.49},
    51.50: {"male": 3.72, "female": 3.72},
    52.50: {"male": 3.96, "female": 3.96},
    53.50: {"male": 4.21, "female": 4.20},
    54.50: {"male": 4.47, "female": 4.45},
    55.50: {"male": 4.72, "female": 4.69},
    56.50: {"male": 4.98, "female": 4.94},
    57.50: {"male": 5.24, "female": 5.19},
    58.50: {"male": 5.50, "female": 5.44},
    59.50: {"male": 5.76, "female": 5.70},
    60.50: {"male": 6.02, "female": 5.95},
    61.50: {"male": 6.28, "female": 6.20},
    62.50: {"male": 6.54, "female": 6.45},
    63.50: {"male": 6.79, "female": 6.70},
    64.50: {"male": 7.05, "female": 6.95},
    65.50: {"male": 7.30, "female": 7.20},
    66.50: {"male": 7.56, "female": 7.44},
    67.50: {"male": 7.81, "female": 7.69},
    68.50: {"male": 8.06, "female": 7.93},
    69.50: {"male": 8.30, "female": 8.17},
    70.50: {"male": 8.55, "female": 8.41},
    71.50: {"male": 8.79, "female": 8.64},
    72.50: {"male": 9.03, "female": 8.88},
    73.50: {"male": 9.27, "female": 9.11},
    74.50: {"male": 9.51, "female": 9.34},
    75.50: {"male": 9.74, "female": 9.57},
    76.50: {"male": 9.97, "female": 9.79},
    77.50: {"male": 10.21, "female": 10.02},
    78.50: {"male": 10.43, "female": 10.24},
    79.50: {"male": 10.66, "female": 10.47},
    80.50: {"male": 10.89, "female": 10.69},
    81.50: {"male": 11.12, "female": 10.91},
    82.50: {"male": 11.34, "female": 11.13},
    83.50: {"male": 11.57, "female": 11.35},
    84.50: {"male": 11.79, "female": 11.57},
    85.50: {"male": 12.02, "female": 11.80},
    86.50: {"male": 12.24, "female": 12.02},
    87.50: {"male": 12.47, "female": 12.24},
    88.50: {"male": 12.70, "female": 12.46},
    89.50: {"male": 12.92, "female": 12.69},
    90.50: {"male": 13.16, "female": 12.91},
    91.50: {"male": 13.39, "female": 13.14},
    92.50: {"male": 13.62, "female": 13.37},
    93.50: {"male": 13.86, "female": 13.61},
    94.50: {"male": 14.10, "female": 13.84},
    95.50: {"male": 14.34, "female": 14.08},
    96.50: {"male": 14.59, "female": 14.33},
    97.50: {"male": 14.84, "female": 14.58},
    98.50: {"male": 15.10, "female": 14.83},
    99.50: {"male": 15.35, "female": 15.09},
    100.50: {"male": 15.62, "female": 15.36},
    101.50: {"male": 15.89, "female": 15.63},
    102.50: {"male": 16.16, "female": 15.91},
    103.50: {"male": 16.43, "female": 16.19},
  };

  Map<double, Map> weight3to18Map = {
    80: {"male": 10.53, "female": 10.34},
    82: {"male": 11.19, "female": 10.98},
    84: {"male": 12.09, "female": 11.86},
    88: {"male": 12.54, "female": 12.31},
    90: {"male": 13.20, "female": 12.90},
    92: {"male": 13.60, "female": 13.30},
    94: {"male": 14.00, "female": 13.80},
    96: {"male": 14.40, "female": 13.80},
    98: {"male": 14.90, "female": 14.20},
    100: {"male": 15.50, "female": 14.90},
    102: {"male": 16.00, "female": 15.40},
    104: {"male": 16.70, "female": 16.00},
    106: {"male": 17.20, "female": 16.60},
    108: {"male": 17.90, "female": 17.30},
    110: {"male": 18.70, "female": 17.80},
    112: {"male": 19.20, "female": 18.60},
    114: {"male": 20.00, "female": 19.20},
    116: {"male": 20.80, "female": 19.70},
    118: {"male": 21.40, "female": 20.50},
    120: {"male": 22.20, "female": 21.20},
    122: {"male": 23.00, "female": 22.00},
    124: {"male": 23.80, "female": 22.90},
    126: {"male": 24.60, "female": 23.60},
    128: {"male": 25.50, "female": 24.50},
    130: {"male": 26.40, "female": 25.50},
    132: {"male": 27.40, "female": 26.80},
    134: {"male": 28.40, "female": 28.00},
    136: {"male": 29.80, "female": 29.40},
    138: {"male": 31.20, "female": 31.00},
    140: {"male": 32.70, "female": 32.40},
    142: {"male": 34.30, "female": 34.10},
    144: {"male": 35.70, "female": 35.60},
    146: {"male": 37.50, "female": 37.00},
    148: {"male": 39.10, "female": 38.10},
    150: {"male": 40.70, "female": 39.20},
    152: {"male": 42.30, "female": 40.70},
    154: {"male": 43.60, "female": 41.80},
    156: {"male": 45.40, "female": 43.30},
    158: {"male": 46.70, "female": 44.70},
    160: {"male": 48.10, "female": 46.00},
    162: {"male": 49.40, "female": 48.10},
    164: {"male": 50.80, "female": 51.40},
    166: {"male": 63.80, "female": 59.30},
    168: {"male": 65.64, "female": 61.14},
    170: {"male": 67.48, "female": 62.98},
    172: {"male": 69.32, "female": 64.82},
    174: {"male": 71.60, "female": 66.66},
    176: {"male": 73.00, "female": 68.50},
    178: {"male": 74.84, "female": 70.34},
    180: {"male": 76.68, "female": 72.18},
  };

  
}
