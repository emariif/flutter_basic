import 'package:flutter/material.dart';

class KotakWarnaBesar extends StatelessWidget {
  final String text;
  final Color warna;

  const KotakWarnaBesar({Key? key, required this.text, required this.warna})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(bottom: 8),
          color: warna,
        ),
        Text(
          'Warna $text',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
