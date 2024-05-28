import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/cpap_tqt/cpap_tqt_controller.dart';
import 'package:airped/desconforto_resp/desconforto_controller.dart';
import 'package:airped/tot_pf/tot_controller.dart';
import 'package:airped/volume/volume_corrent_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerSingleton<CalculadoraController>(CalculadoraController());
  getIt.registerSingleton<VolumeCorrenteController>(VolumeCorrenteController());
  getIt.registerSingleton<TotController>(TotController());
  getIt.registerSingleton<CpapTqtController>(CpapTqtController());
  getIt.registerSingleton<DesconfortoController>(DesconfortoController());
}
