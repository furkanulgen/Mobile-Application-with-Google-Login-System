// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, no_leading_underscores_for_local_identifiers
//? GEREKLİ KÜTÜPHANELERİ EKLİYORUZ
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../../providers/AppPageManagementProvider.dart';
import '../../settings.dart';
//?============================================================================

//? Geriye Scaffold Türünden Widget Döndürecek Sınıfımızı Oluşturuyoruz
class PageRedirectForPageManagement extends StatelessWidget {
  const PageRedirectForPageManagement({super.key});

  @override
  Widget build(BuildContext context) {
    var _controlAPMP = Provider.of<AppPageManagementProvider>(
        context); //*Sayfa yönetimi sınıfını ekliyoruz.
    return Scaffold(
      body: _controlAPMP.getPages[_controlAPMP
          .getPageCount], //? Sayfa yönetimi sınıfından Hangi Sayfada Olduğumuzun Bilgisini Alıyoruz.
      bottomNavigationBar: Padding(
        //* Sayfalar Arası Geçiş İçin Navigasyon Tuşları Ekliyoruz
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          rippleColor: page2color,
          hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: page1color,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: page2color,
          color: page1color,
          tabs: [
            GButton(
              icon: FontAwesomeIcons.addressCard,
              text: 'First Page',
            ),
            GButton(
              icon: FontAwesomeIcons.earthAmericas,
              text: 'Secondary Page',
            ),
          ],
          selectedIndex: _controlAPMP.getPageCount,
          onTabChange: (index) {
            _controlAPMP.setPageCount(index);
          },
        ),
      ),
    );
  }
}
