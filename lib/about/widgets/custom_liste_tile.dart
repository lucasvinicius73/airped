import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomListeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? email;
  //final bool isEmail;

  const CustomListeTile(
      {super.key, required this.title, required this.subtitle, this.email});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title:",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF67ABEB)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "• $subtitle",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                email != null
                    ? InkWell(
                        onTap: () => tryLaunchUrl(email!),
                        child: RichText(
                            text: TextSpan(children: [
                          const TextSpan(
                              text: "• ",
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                            text: email,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              decorationColor: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ])))
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
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
