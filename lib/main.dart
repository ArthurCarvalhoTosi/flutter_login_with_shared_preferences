import 'package:flutter/material.dart';
import 'package:login_with_shared_prefs/pages/home_page.dart';
import 'package:login_with_shared_prefs/pages/login.dart';
import 'package:login_with_shared_prefs/pages/splash_screen.dart';
void main(List<String> args) {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with Shared Preferences',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple),
        useMaterial3: true,  
      ),
        initialRoute: '/',
        routes: {
          '/':(context) => const SplashScreen(),
          '/login':(context) => Login(),
          '/home':(context) => HomePage(),
        },  
    );
  }
}