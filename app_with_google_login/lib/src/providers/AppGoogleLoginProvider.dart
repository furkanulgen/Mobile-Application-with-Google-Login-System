import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AppGoogleLoginProvider with ChangeNotifier {
  final isGoogleLogin = GoogleSignIn();
  //* Giriş Bilgisinin Tutulacağı Sabit/Değişken ' i ayarlıyoruz.

  GoogleSignInAccount? _user;
  //* Giriş Bilgisinin Geriye Döndüren Method
  GoogleSignInAccount get user => _user!;

  //* Giriş Olaylarını Başlatacak Method
  Future GoogleLogin() async {
    final googleUser = await isGoogleLogin.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final cr = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(cr);
    notifyListeners();
  }

  //* Çıkış Olaylarını Başlatacak Method
  Future GoogleLogOut() async {
    isGoogleLogin.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
