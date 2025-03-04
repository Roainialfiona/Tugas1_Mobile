import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("I Am Muslim", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        elevation: 10, // Menambahkan shadow pada AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container( // Membungkus Image.asset dengan Container
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3), // Warna shadow
                    spreadRadius: 5, // Sebaran shadow
                    blurRadius: 10, // Tingkat blur shadow
                    offset: Offset(0, 5), // Posisi shadow (x, y)
                  ),
                ],
              ),
              child: ClipRRect( // Menggunakan ClipRRect untuk memotong gambar dengan radius
                borderRadius: BorderRadius.circular(10), // Radius sudut gambar
                child: Image.asset(
                  'image/muslim.jpg',
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30), // Memberikan jarak antara gambar dan teks
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50], // Warna background yang lebih soft
                borderRadius: BorderRadius.circular(20), // Border radius yang lebih halus
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Menambahkan shadow pada container
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Kabah mengajarkan kita tentang kesetaraan. Di hadapan-Nya, semua hamba sama. Yang membedakan hanyalah ketakwaan dan usaha kita.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Text("📚 Islam itu agama yang adil: ada waktu untuk ibadah, ada waktu untuk istirahat. Tapi pas tarawih, kaki kita kadang memilih untuk istirahat duluan.",
                        style: TextStyle(fontSize: 16)),
                  Text("💰 Islam mengajarkan kita untuk hemat, tapi pas lebaran, dompet tiba-tiba jadi ringan karena bagi-bagi THR.",
                        style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
