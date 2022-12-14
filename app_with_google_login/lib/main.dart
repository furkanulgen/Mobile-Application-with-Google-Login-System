import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './src/pages/PageRedirectForLogin.dart';
import './src/providers/AppGoogleLoginProvider.dart';
import './src/providers/AppPageManagementProvider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider<AppGoogleLoginProvider>(
          create: (BuildContext context) => AppGoogleLoginProvider()),
          ChangeNotifierProvider<AppPageManagementProvider>(
          create: (BuildContext context) => AppPageManagementProvider()),
    ],
    child: PageRedirectForLogin(),
  ));
}
