import 'package:flutter/material.dart';
import 'package:nano_influencers/widgets/auth_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSignedIn = false;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user != null) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue[900],
          title: const Text('The Nano Influencers'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
                Text(
                  "${user.email!.substring(0, 7)}...",
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue[900],
          title: const Text('The Nano Influencers'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                showDialog(
                    context: context, builder: (context) => const AuthDialog());
              },
            )
          ],
        ),
      );
    }
  }
}
