import 'package:flutter/material.dart';
// import 'ui/poli_page.dart';
import 'ui/beranda.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik Tasyeee',
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}
