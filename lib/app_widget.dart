import 'package:airped/about/about_page.dart';
import 'package:airped/canula/canula_page.dart';
import 'package:airped/cpap_tqt/cpap_tqt.dart';
import 'package:airped/desconforto_resp/desconforto_resp.dart';
import 'package:airped/home/home_page.dart';
import 'package:airped/tot_pf/tot_pf.dart';
import 'package:airped/volume/volume_corrente.dart';
import 'package:flutter/material.dart';
import 'package:airped/theme.dart';
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
      title: 'Air Ped',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      themeMode: ThemeMode.light,
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/volume_corrente_page': (context) => const VolumeCorrentePage(),
        '/tot_pf_page': (context) => const TotPFPage(),
        '/cpap_tqt_page': (context) => const CpapTqtPage(),
        '/canula_page': (context) => const CanulaPage(),
        '/desconforto_resp_page': (context) => const DesconfortoRespPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
