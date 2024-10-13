import 'package:airped/Widgets/Drawer/drawer_controller.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/cpap_tqt/cpap_tqt_controller.dart';
import 'package:airped/desconforto_resp/desconforto_controller.dart';
import 'package:airped/tubo_orotraqueal_ponto_de_fixacao/tot_controller.dart';
import 'package:airped/volume/volume_corrent_controller.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerSingleton<CalculadoraController>(CalculadoraController());
  getIt.registerSingleton<VolumeCorrenteController>(VolumeCorrenteController());
  getIt.registerSingleton<TotController>(TotController());
  getIt.registerSingleton<CpapTqtController>(CpapTqtController());
  getIt.registerSingleton<DesconfortoController>(DesconfortoController());
  getIt.registerSingleton<CustomDrawerController>(CustomDrawerController());
}
