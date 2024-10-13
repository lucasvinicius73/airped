import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/app_widget.dart';
import 'package:airped/cpap_tqt/cpap_tqt_controller.dart';
import 'package:airped/desconforto_resp/desconforto_controller.dart';
import 'package:airped/providers.dart';
import 'package:airped/tubo_orotraqueal_ponto_de_fixacao/tot_controller.dart';
import 'package:airped/volume/volume_corrent_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupProviders();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CalculadoraController()),
      ChangeNotifierProvider(create: (_) => VolumeCorrenteController()),
      ChangeNotifierProvider(create: (_) => TotController()),
      ChangeNotifierProvider(create: (_) => CpapTqtController()),
      ChangeNotifierProvider(create: (_) => DesconfortoController()),
    ],
    child: const MyApp(),
  ));
}
