// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'list_kategori.dart';
import 'teman.dart';

const abuabu = Color(0xffD9D9D9);
const kuning1 = Color(0xFFffffb7);
const kuning2 = Color(0xFFfff192);
const kuning3 = Color(0xFFffea61);
const kuning4 = Color(0xFFffdd3c);
const kuning5 = Color.fromARGB(255, 245, 188, 0);
const putih = Color(0xFFffffff);
const biru = Color(0xFF768CF9);
const hitam = Color.fromARGB(255, 12, 12, 12);


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: homePage(),
      ),
    );
  }
}

