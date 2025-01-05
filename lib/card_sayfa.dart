import 'dart:ui';

import 'package:flutter/material.dart';

class cardSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vücut Kitle Endeksi",style: TextStyle(fontSize: 24),),
        backgroundColor: Colors.yellowAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "Zayıf",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "<18,5",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  _showDialog(context, "Zayıf",
                      "Vücut kitle endeksiniz zayıf seviyesinde.Bu durum,vücudunuzun ihtiyaç duyduğu enerji ve besinleri yeterince almadığını gösterebilir.Beslenmenize sağlıklı ve kalori açısından zengin yiyecekler ekleyin(örneğin, tam tahıllar, sağlıklı yağlar, kuru yemişler ve protein açısından zengin gıdalar).");
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "Normal",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "18,5-24,9",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  _showDialog(
                    context,
                    "Normal",
                    "Vücut kitle endeksiniz normal seviyede. Bu, sağlıklı bir kiloda olduğunuzu gösterir ve sağlığınızı korumak için ideal bir noktadasınız. Dengeli bir diyetle sağlıklı beslenmeye devam edin.",
                  );
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "Fazla Kilolu",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "25-29,9",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                onTap: () {
                  _showDialog(
                    context,
                    "Fazla Kilolu",
                    "Vücut kitle endeksiniz fazla kilolu seviyede. Bu durum, gelecekte sağlık sorunları yaşama riskinizi artırabilir.Rafine şeker ve işlenmiş gıdalardan kaçınarak sebze, meyve, tam tahıllar ve protein ağırlıklı bir diyet uygulayın.Sağlıklı yaşam alışkanlıkları edinmek için aşırı diyetlerden veya hızlı kilo verme yöntemlerinden kaçının.",
                  );
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "Obezite",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "30 ve üzeri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                onTap: () {
                  _showDialog(
                    context,
                    "Obezite",
                    "Vücut kitle endeksiniz Obezite seviyesinde. Bu durum, ciddi sağlık sorunları riskini artırabilir (örneğin diyabet, hipertansiyon).Psikolojik destek gerekliyse bir uzmana danışarak motivasyonunuzu artırabilirsiniz.Sağlık kontrollerinizi ihmal etmeyerek doktorunuzla düzenli takipte kalın.",
                  );
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "1.Derece Obezite",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "30-34,9",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[700],
                  ),
                ),
                onTap: () {
                  _showDialog(
                    context,
                    "1.Derece Obezite",
                    "Vücut kitle endeksiniz 1. derece obezite seviyesinde. Bu aşamada kilo kontrolü ile sağlık risklerinizi azaltabilirsiniz.Günlük hareketinizi artırarak aktif bir yaşam tarzı benimseyin (örneğin günde 10.000 adım hedefleyin).Yavaş ve sürdürülebilir kilo verme hedefleri belirleyin.",
                  );
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "2.Derece Obezite",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "35-39,9",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[600],
                  ),
                ),
                onTap: () {
                  _showDialog(
                    context,
                    "2.Derece Obezite",
                    "Vücut kitle endeksiniz 2. Derece Obezite seviyesinde. Sağlık riskleri önemli ölçüde artabilir; bu nedenle uzman yardımı almak önemlidir.Şekerli içeceklerden tamamen uzak durarak bol su tüketin.Doktorunuzla görüşerek, kilo kontrolü ve sağlık risklerini azaltmak için bir plan oluşturun.",
                  );
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10,
              child: ListTile(
                title: Text(
                  "3.Derece Obezite",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Text(
                  "40 ve üzeri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                onTap: () {
                  _showDialog(
                    context,
                    "3.Derece Obezite",
                    "Vücut kitle endeksiniz 3. derece obezite seviyesinde. Bu durum, ciddi sağlık sorunlarına neden olabileceği için tıbbi destek gerektirir.Hemen bir sağlık uzmanına başvurarak kilo kontrolü ve tedavi seçeneklerini değerlendirin.Beslenme alışkanlıklarınızı uzman yardımıyla köklü şekilde değiştirin ve sürdürülebilir bir plan oluşturun.Hem fiziksel hem de psikolojik destek alarak yaşam kalitenizi artırmaya odaklanın.",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          children: [
            Icon(
              Icons.info,
              color: Colors.red,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        content: Text(content,
            style: TextStyle(fontSize: 16, color: Colors.grey[900])),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.green,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text("Kapat"),
            onPressed: () {
              Navigator.of(context).pop(); // Dialog'ı kapat
            },
          ),
        ],
      );
    },
  );
}
