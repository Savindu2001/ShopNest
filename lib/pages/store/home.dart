import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser;

    signOut()async{
      await FirebaseAuth.instance.signOut();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${user!.email}'),
          SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (()=>signOut()), 
                child: Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }
}