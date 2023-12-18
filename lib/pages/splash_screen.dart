import 'dart:async';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:login_with_shared_prefs/pages/home_page.dart';
import 'package:login_with_shared_prefs/pages/login.dart';
import '../services/prefs_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> { 
  Future<Widget> futureCall() async {
    bool isAuth = await PrefsService.isAuth();

    if (isAuth) {
      return Future.value(HomePage());
    }
    
    return Future.value(Login()); }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen( 
      logo: Image.network(
        'https://cdn4.iconfinder.com/data/icons/logos-brands- 5/24/flutter-512.png'),
      title: const Text('Exemplo Login com Shared Preferences',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.grey.shade400, 
      showLoader: true,
      loadingText: const Text('Loading'),
      durationInSeconds: 5,
      futureNavigator: futureCall(), 
    );
  } 
}