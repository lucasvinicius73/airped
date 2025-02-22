import 'package:airped/about/about_page.dart';
import 'package:airped/cpap_tqt/cpap_tqt.dart';
import 'package:airped/desconforto_resp/desconforto_resp.dart';
import 'package:airped/desconforto_resp/desconforto_result_page.dart';
import 'package:airped/home/new_home_page.dart';
import 'package:airped/parametros_ventilatorios/parametros_ventilatorios.dart';
import 'package:airped/splash_screen.dart';
import 'package:airped/tubo_orotraqueal_ponto_de_fixacao/tot_pf.dart';
import 'package:airped/volume/volume_corrente.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// ThemeData lightTheme = const MaterialTheme(TextTheme()).light();
// ThemeData darkTheme = const MaterialTheme(TextTheme()).dark();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: FToastBuilder(),
      debugShowCheckedModeBanner: false,
      title: 'Air Ped',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      themeMode: ThemeMode.light,
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const NewHomePage(),
        '/volume_corrente_page': (context) => const VolumeCorrentePage(),
        '/tot_pf_page': (context) => const TotPFPage(),
        '/cpap_tqt_page': (context) => const CpapTqtPage(),
        '/desconforto_resp_page': (context) => const DesconfortoRespPage(),
        '/desconforto_result_page': (context) => const DesconfortoResultPage(),
        '/parametros_page': (context) => const ParametrosVentilatorios(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
