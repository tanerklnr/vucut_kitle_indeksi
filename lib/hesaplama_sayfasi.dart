import 'package:flutter/material.dart';
import 'card_sayfa.dart';

class HesaplamaSayfasi extends StatefulWidget {
  String _kullaniciadiyazdir;

  HesaplamaSayfasi(this._kullaniciadiyazdir);

  @override
  State<HesaplamaSayfasi> createState() => _HesaplamaSayfasiState();
}

class _HesaplamaSayfasiState extends State<HesaplamaSayfasi> {
  double _sonuc = 0;

  TextEditingController _boycontroller = TextEditingController();
  TextEditingController _kilocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vücut Kitle İndeksi",
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Hoşgeldin ${widget._kullaniciadiyazdir}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _boycontroller,
              decoration: InputDecoration(
                label: Text("Boyunuzu Giriniz"),
                labelStyle: TextStyle(
                  fontSize: 18, // Yazı boyutunu büyüttük
                  fontWeight: FontWeight.bold, // Kalın yazı tipi
                  color: Colors.black87, // Daha belirgin bir renk
                ),
                hintText: "Örneğin: 1.75",
                hintStyle: TextStyle(
                  fontSize: 16, // Hint yazısının boyutunu da artırdık
                  color: Colors.grey[700], // Hafif koyu bir renk
                ),
                suffixText: "m",
                suffixStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: _kilocontroller,
              decoration: InputDecoration(
                label: Text("Kilonuzu Giriniz"),
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, // Daha belirgin bir renk
                ),
                hintText: "Örneğin: 85",
                hintStyle: TextStyle(
                  fontSize: 16, // Hint yazısının boyutunu artırdık
                  color: Colors.grey[700], // Hafif koyu bir renk
                ),
                suffixText: "kg",
                suffixStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
              onPressed: _hesapla,
              child: Text(
                "Hesapla",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
              onPressed: () {
                _cardSayfasiniac(context);
              },
              child: Text(
                "Sonuçları Gör",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/resim.png"),
          ],
        ),
      ),
    );
  }

  void _hesapla() {
    String boyText = _boycontroller.text.trim();
    String kiloText = _kilocontroller.text.trim();

    // Boyda virgül kontrolü
    if (boyText.contains(',')) {
      _showErrorDialog(
          "Lütfen boy değerini virgül (,) yerine nokta (.) kullanarak giriniz.");
      return;
    }

    try {
      double boy = double.parse(boyText);
      double kilo = double.parse(kiloText);
      setState(() {
        _sonuc = kilo / (boy * boy);
      });
      _showSonucDialog();
    } catch (e) {
      _showErrorDialog("Lütfen geçerli bir sayı giriniz.");
    }
  }

  void _showErrorDialog(String mesaj) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hata"),
          content: Text(
            mesaj,
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
          actions: [
            TextButton(
              child: Text("Tamam"),
              onPressed: () {
                Navigator.of(context).pop(); // Dialog'u kapat
              },
            ),
          ],
        );
      },
    );
  }

  void _showSonucDialog() {
    String sonucMesaji =
        "Vücut Kitle Endeksiniz: ${_sonuc.toStringAsFixed(2)} Sonuçları Gör ekranından değerinizi kontrol edebilirsiniz.";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hesaplama Sonucu"),
          content: Text(
            sonucMesaji,
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            TextButton(
              child: Text("Kapat"),
              onPressed: () {
                Navigator.of(context).pop(); // Dialog'u kapat
              },
            ),
          ],
        );
      },
    );
  }

  void _cardSayfasiniac(BuildContext context) {
    MaterialPageRoute cardYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return cardSayfasi();
      },
    );
    Navigator.push(context, cardYolu);
  }
}
