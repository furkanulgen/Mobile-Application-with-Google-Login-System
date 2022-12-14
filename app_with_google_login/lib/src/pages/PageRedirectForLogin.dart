//? GEREKLİ KÜTÜPHANELERİ EKLİYORUZ
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'LoginWithout/LoginPage.dart';
import 'LoginIn/PageRedirectForPageManegement.dart';
//?============================================================================

//? Geriye MaterialApp Türünden Widget Döndürecek Sınıfımızı Oluşturuyoruz
class PageRedirectForLogin extends StatelessWidget {
  const PageRedirectForLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //* Hata ayıklama etiketimizi kaldırıyoruz
      title: 'Flutter Test Login', //* Başlığımızı ayarlıyoruz
      theme:
          ThemeData(primarySwatch: Colors.grey), //* Tema bilgisini ayarlıyoruz
      home: StreamBuilder(
          //* Kullanıcnın Giriş Bilgisini Dinliyoruz
          stream: FirebaseAuth.instance
              .authStateChanges(), //* Bilginin kaynağını belirtiyoruz
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return PageRedirectForPageManagement();
              //? Kullanıcının Bilgi Akışı Mevcutsa Ana Sayfa Widgetlerini Çağırıyoruz
            } else {
              
              return LoginPage();
              //! Kullanıcının Bilgi Akışı Mevcut Değilse Giriş Sayfası Widgetlerini Çağırıyoruz
            }
          }),
    );
  }
}
