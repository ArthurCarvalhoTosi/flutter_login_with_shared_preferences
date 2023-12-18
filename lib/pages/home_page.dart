import 'package:flutter/material.dart';
import 'package:login_with_shared_prefs/services/prefs_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login With Shared Prefs"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            PrefsService.logout();
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
          },
          icon: const Icon(Icons.logout),)
        ],
      ),
      body: const Center(child: Text('Construa sua Home aqui'),)
    );
  }
}