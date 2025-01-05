import 'package:flutter/material.dart';
import 'package:vucut_kitle_indeksi_ana/hesaplama_sayfasi.dart';

class Sayfa1 extends StatefulWidget {
  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  TextEditingController _kullaniciadi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "Vücut Kitle Endeksi",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                controller: _kullaniciadi,
                autofocus: false,
                decoration: InputDecoration(
                  counterText: "Size hitap edebilmemiz için isminizi giriniz.",
                  counterStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                  icon: Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'Kullanıcı Adı',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                  label: Text("Kullanıcı Adınızı Giriniz"),
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: Colors.grey[400],
              ),
              child: Text("Giriş Yap"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HesaplamaSayfasi(_kullaniciadi.text),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
