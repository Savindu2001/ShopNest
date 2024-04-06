import 'package:flutter/material.dart';
import 'package:shopnest/pages/auth/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));}, child: Text('Register'))),
      ),
    );
  }
}