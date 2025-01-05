import 'package:flutter/material.dart';
import 'package:vucut_kitle_indeksi_ana/card_sayfa.dart';
import 'package:vucut_kitle_indeksi_ana/vucut_kitle_giris.dart';

import 'hesaplama_sayfasi.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sayfa1(),
      debugShowCheckedModeBanner: false,
    );
  }
}