import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/kotak_warna_besar.dart';

class Soal24 extends StatelessWidget {
  const Soal24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basic'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  );
                } else {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  );
                }
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                var textIndex = '${index + 1}';
                if (index % 2 == 0) {
                  return KotakWarnaBesar(text: textIndex, warna: Colors.amber);
                } else {
                  return KotakWarnaBesar(text: textIndex, warna: Colors.blue);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
