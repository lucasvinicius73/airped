import 'package:flutter/cupertino.dart';

class CalculadoraController extends ChangeNotifier {
  TextEditingController idade = TextEditingController(text: '');
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  List sexos = ['Masculino', 'Feminino'];
  String sexo = 'Masculino';

  bool isYear = true;
  bool showSuffixText = true;

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
    peso.text = '';
    altura.text = '';
    notifyListeners();
  }
}
