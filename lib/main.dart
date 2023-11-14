import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/section04/bottom_navigation_bar_page.dart';
import 'package:flutter_basic/widgets/section04/bottom_sheet_page.dart';
import 'package:flutter_basic/widgets/section04/dialog_snack_page.dart';
import 'package:flutter_basic/widgets/section04/drawer_page.dart';
import 'package:flutter_basic/widgets/section04/dropdown_page.dart';
import 'package:flutter_basic/widgets/section04/tab_bar_page.dart';
import 'package:flutter_basic/widgets/section04/text_field_page.dart';
import 'package:flutter_basic/widgets/soal23.dart';
import 'package:flutter_basic/widgets/soal24.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DrawerPage(),
    );
  }
}
