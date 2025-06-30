import 'package:flutter/material.dart';

class CustomTitlePage extends StatelessWidget {
  const CustomTitlePage({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 435),

      height: 80,
      // width: double.infinity, // Melhor responsividade
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          // Container com texto
          Positioned(
            top: 10,
            left: 35, // Garante que haja espaço para o ícone
            right: 20,
            child: Container(
              height: 60,
              width: double.infinity, // Melhor responsividade

              padding: const EdgeInsets.only(left: 55, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF6EB6E6),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Color(0xFF1C72C2),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    // height: 0, // Removido
                  ),
                ),
              ),
            ),
          ),

          // Ícone circular
          Positioned(
            top: 5,
            left: 15,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF6EB6E6),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(icon),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
