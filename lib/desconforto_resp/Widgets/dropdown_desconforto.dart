import 'package:flutter/material.dart';

class DropDownDesconfortoResp extends StatelessWidget {
  final String title;
  final int value;
  final Map<String, int> values;
  final Function(int?) onChanged;
  const DropDownDesconfortoResp(
      {super.key,
      required this.title,
      required this.value,
      required this.values,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 285,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1C72C2),
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
              width: 285,
              height: 37,
              decoration: ShapeDecoration(
                  color: const Color(0xFFF1F5F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 15,
                      blurStyle: BlurStyle.inner,
                      offset: Offset(0, -3),
                    ),
                  ]),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  dropdownColor: const Color(0xFFF1F5F4),
                  isExpanded: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                  value: value,
                  items: values.entries.map<DropdownMenuItem<int>>(
                    (MapEntry<String, int> entry) {
                      return DropdownMenuItem<int>(
                        value: entry.value,
                        child: Text(
                          entry.key,
                          style: const TextStyle(
                            color: Color(0x667C7C7C),
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: onChanged,
                ),
              )),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
