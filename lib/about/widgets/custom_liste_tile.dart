import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomListeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isEmail;

  const CustomListeTile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.isEmail = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title:",
          style: const TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        isEmail
            ? InkWell(
                onTap: () => tryLaunchUrl(subtitle),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decorationColor: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ))
            : Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
      ],
    );
  }

  Future<void> tryLaunchUrl(String urlString) async {
    if (await canLaunchUrlString(urlString)) {
      await launchUrlString(urlString);
    } else {
      throw 'Could not launch $urlString';
    }
  }
}
