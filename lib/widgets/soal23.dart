import 'package:flutter/material.dart';

class Soal23 extends StatelessWidget {
  const Soal23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Layout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    height: 260,
                    width: 260,
                    color: Colors.blue[900],
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(250 / 2),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                    image: const DecorationImage(
                        image: NetworkImage('https://picsum.photos/200/300'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 32,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline
              ),
            ),
          ],
        ),
      ),
    );
  }
}
