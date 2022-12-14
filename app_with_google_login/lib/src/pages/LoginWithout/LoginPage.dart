//? GEREKLİ KÜTÜPHANELERİ EKLİYORUZ
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/AppGoogleLoginProvider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//?============================================================================

//? Geriye Scaffold Türünden Widget Döndürecek Sınıfımızı Oluşturuyoruz
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //* Sayfadaki Widgetlerin Alt alta Sıralamak İçin Column Widget'i Altından Devam Ediyoruz
          children: [
            Spacer(),
            Container(
              //* Bir Kutu Oluşturuyoruz ve İçine Button Widget'i Ekliyoruz.
              padding: EdgeInsets.all(4),
              child: OutlinedButton.icon(
                label: Text(
                  //* Buttonun Text'ini ve Text'inin Style'ını Ayarlıyoruz.
                  'Google Hesabı İle Giriş',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                icon: FaIcon(FontAwesomeIcons.google,
                    color: Colors.red), //* Icon veriyoruz
                onPressed: () {
                  //* Button'a Tıklandığında Olucakları Kodluyoruz.
                  var controlALP = Provider.of<AppGoogleLoginProvider>(context,
                      listen: false);
                  controlALP.GoogleLogin(); //* Google Giriş Ekranını Açıyoruz.
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
