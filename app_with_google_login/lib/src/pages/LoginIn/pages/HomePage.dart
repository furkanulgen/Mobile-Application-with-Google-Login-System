//? GEREKLİ KÜTÜPHANELERİ EKLİYORUZ
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//?============================================================================

//? Geriye SafeArea Türünden Widget Döndürecek Sınıfımızı Oluşturuyoruz
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bu Ana Sayfa"), //* Ekrana yazı yazdırıyoruz.
        ],
      ),
    ));
  }
}
