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
                  'WELCOME',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Image.network(
                    'https://cdn3.iconfinder.com/data/icons/laundry-137/64/Clothes_clothing_Cloth_tshirt_shirt_Clothes_hanger_clothes_on_hangers_Laundry_icon_outline_illustration-1024.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 50),
                CircularProgressIndicator(), // Indicator loading
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {

              },
              child: Icon(Icons.arrow_forward),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
