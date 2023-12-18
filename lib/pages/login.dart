import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController loginTextController; 
  late TextEditingController passwordTextController;

  @override
  void initState() {
    super.initState();
    loginTextController = TextEditingController(); 
    passwordTextController = TextEditingController();
  }
  
  void _onPressedButtonLogin(){
  
  }
  
  @override
  void dispose() {
    loginTextController.dispose(); 
    passwordTextController.dispose(); 
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          const Icon( 
            Icons.supervisor_account, 
            color: Colors.black, 
            size: 100,
          ),
          const SizedBox(
            height: 10,
          ),
        TextField(
          controller: loginTextController,
          autofocus: true,
          keyboardType: TextInputType.text,
          style: const TextStyle(color: Colors.blue, fontSize: 30), 
          decoration: const InputDecoration(
          labelText: 'Login',
          labelStyle: TextStyle(color: Colors.black), 
          ),
        ),
        TextField(
          controller: passwordTextController,
          autofocus: true,
          keyboardType: TextInputType.text, 
          obscureText: true,
          style: const TextStyle(color: Colors.blue, fontSize: 30), 
          decoration: const InputDecoration(
          labelText: 'Senha',
          labelStyle: TextStyle(color: Colors.black), 
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ButtonTheme(
          height: 60,
          child: MaterialButton(
          onPressed: _onPressedButtonLogin, 
          color: Colors.green,
          child: const Text('Login',
          style: TextStyle(color: Colors.white), 
          ),
         ),
        ),
      ], 
    ),
  );
  }
}