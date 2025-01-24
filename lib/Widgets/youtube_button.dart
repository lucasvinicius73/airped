import 'package:airped/Widgets/custom_decoration.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YoutubeButton extends StatelessWidget {
  final String link;
  const YoutubeButton({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => _launchYouTube(),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 130,
          height: 46,
          padding: const EdgeInsets.symmetric(horizontal: 13),
          decoration: CustomDecoration.shapeDecoration,
          child: const Row(
            children: [
              Icon(Icons.play_arrow),
              Text(
                'Acesse',
                style: TextStyle(
                  color: Color(0xFF67ABEB),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchYouTube() async {
    final Uri url = Uri.parse(link);

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode
            .externalApplication, // Abre no app do YouTube, se disponível
      );
    } else {
      throw 'Não foi possível abrir o link $link';
    }
  }
}
