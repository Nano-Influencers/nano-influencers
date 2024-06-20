import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class SignedIn extends StatefulWidget {
  const SignedIn({super.key});

  @override
  State<SignedIn> createState() => _SignedInState();
}

class _SignedInState extends State<SignedIn> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[900],
        title: Container(
            padding: const EdgeInsets.all(2.0),
            child:
                Image.asset('assets/logo.png', fit: BoxFit.cover, scale: 1.5)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
              Text(
                "${user!.email!.substring(0, 7)}...",
              )
            ],
          )
        ],
      ),
    );
  }
}
