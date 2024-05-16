import 'package:flutter/cupertino.dart';

class CalculadoraController extends ChangeNotifier {
  TextEditingController idade = TextEditingController();
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  List sexos = ['Masculino', 'Feminino'];
  String sexo = 'Masculino';

  changeDropDown(String? value) {
    sexo = value!;
    notifyListeners();
  }

  reset() {
    idade.text = '';
    peso.text = '';
    altura.text = '';
    notifyListeners();
  }
}
