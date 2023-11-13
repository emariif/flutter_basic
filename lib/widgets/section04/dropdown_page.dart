import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  // const DropDownPage({super.key});
  late List data = [
    {"judul": "Halaman 1", "data": 1},
    {"judul": "Halaman 2", "data": 2},
    {"judul": "Halaman 3", "data": 3},
  ];

  late int dataAwal = data[0]['data'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar DropDown')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: DropdownButton(
            value: dataAwal,
            items: data
                .map(
                  (e) => DropdownMenuItem<int>(
                    value: e['data'] as int,
                    child: Text("${e['judul']}"),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
