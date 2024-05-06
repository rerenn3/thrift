import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WELCOME', // Kata-kata welcome
                  style: TextStyle(
                    fontSize: 48, // Ukuran teks yang besar
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), // Jarak antara teks "Welcome" dan gambar
                SizedBox(
                  width: 400, // Menentukan lebar gambar
                  height: 400, // Menentukan tinggi gambar
                  child: Image.network(
                    'https://cdn3.iconfinder.com/data/icons/laundry-137/64/Clothes_clothing_Cloth_tshirt_shirt_Clothes_hanger_clothes_on_hangers_Laundry_icon_outline_illustration-1024.png',
                    fit: BoxFit.cover, // Mengatur agar gambar mengisi ruang yang tersedia
                  ),
                ),
                SizedBox(height: 20), // Jarak antara gambar dan indicator loading
                CircularProgressIndicator(), // Indicator loading
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Tambahkan logika untuk tombol panah di sini
              },
              child: Icon(Icons.arrow_forward),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Mengatur border radius menjadi setengah dari lebar tombol
              ),
            ),
          ),
        ],
      ),
    );
  }
}
