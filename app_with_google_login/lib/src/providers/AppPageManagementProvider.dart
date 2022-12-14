import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/LoginIn/pages/HomePage.dart';
import '../pages/LoginIn/pages/UserPage.dart';

class AppPageManagementProvider with ChangeNotifier {
  int pageCount = 1; //* Bulunduğunuz Sayfanın Bilgisini Tutan Değişken
  List<Widget> pages = [
    //* Sayfalarımızı List İçinde Tutuyoruz.
    HomePage(),
    UserPage(),
  ];

  //* Bulunduğumuz Sayfanın Güncellenmesi İçin Gerekli Method
  setPageCount(count) {
    pageCount = count;
    notifyListeners();
  }

  //* Bulunduğumuz sayfanın Indexini Geriye döndürecek method
  int get getPageCount => pageCount;
  //* Sayfalırı Tutuğumuz Listeyi Geriye döndürecek method
  List<Widget> get getPages => pages;
}
