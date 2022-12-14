//? GEREKLİ KÜTÜPHANELERİ EKLİYORUZ
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/AppGoogleLoginProvider.dart';
//?============================================================================

//? Geriye SafeArea Türünden Widget Döndürecek Sınıfımızı Oluşturuyoruz
class UserPage extends StatelessWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context) {
    var _controlALP = Provider.of<AppGoogleLoginProvider>(context);
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bu Kullanıcı Sayfası"), //* Ekrana Yazı Yazdırıyoruz.
          ElevatedButton.icon(
              onPressed: () {
                _controlALP.GoogleLogOut();
              },
              icon: Icon(Icons.logout),
              label: Text("Çıkış"))
        ],
      ),
    ));
  }
}
