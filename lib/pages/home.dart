import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signupgoogle/pages/auth.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    AuthServies authServies = AuthServies();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: authServies.handlesSignout,
              icon: const Icon(Icons.logout)),
        ],
        centerTitle: true,
        title: const Text('Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              FirebaseAuth.instance.currentUser!.photoURL.toString(),
              fit: BoxFit.cover,
            ),
            Text(FirebaseAuth.instance.currentUser!.displayName.toString()),
            Text(FirebaseAuth.instance.currentUser!.email.toString()),
          ],
        ),
      ),
    );
  }
}
